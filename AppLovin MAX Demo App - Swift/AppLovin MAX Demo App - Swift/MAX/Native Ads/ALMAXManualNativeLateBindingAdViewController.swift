//
//  ALMAXManualNativeLateBindingAdViewController.swift
//  AppLovin MAX Demo App - Swift
//
//  Created by Billy Hu on 3/8/22.
//  Copyright © 2022 AppLovin. All rights reserved.
//

import AdjustSdk
import AppLovinSDK
import UIKit

class ALMAXManualNativeLateBindingAdViewController: ALBaseAdViewController
{
    @IBOutlet weak var nativeAdContainerView: UIView!
    @IBOutlet weak var showAdButton: UIButton!
    
    private let nativeAdLoader: MANativeAdLoader = .init(adUnitIdentifier: "YOUR_AD_UNIT")
    
    private var nativeAdView: MANativeAdView!
    private var nativeAd: MAAd?
    
    // MARK: View Lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        nativeAdLoader.nativeAdDelegate = self
        nativeAdLoader.revenueDelegate = self
    }
    
    deinit
    {
        cleanUpAdIfNeeded()
        
        nativeAdLoader.nativeAdDelegate = nil
        nativeAdLoader.revenueDelegate = nil
    }
    
    func cleanUpAdIfNeeded()
    {
        // Clean up any pre-existing native ad
        if let currentNativeAd = nativeAd
        {
            nativeAdLoader.destroy(currentNativeAd)
        }
        
        if let currentNativeAdView = nativeAdView
        {
            currentNativeAdView.removeFromSuperview()
        }
    }
    
    func createNativeAdView() -> MANativeAdView
    {
        let nativeAdViewNib = UINib(nibName: "NativeManualAdView", bundle: Bundle.main)
        let nativeAdView = nativeAdViewNib.instantiate(withOwner: nil, options: nil).first! as! MANativeAdView
        
        let adViewBinder = MANativeAdViewBinder(builderBlock: { builder in
            builder.titleLabelTag = 1001
            builder.advertiserLabelTag = 1002
            builder.bodyLabelTag = 1003
            builder.iconImageViewTag = 1004
            builder.optionsContentViewTag = 1005
            builder.mediaContentViewTag = 1006
            builder.callToActionButtonTag = 1007
            builder.starRatingContentViewTag = 1008
        })
        nativeAdView.bindViews(with: adViewBinder)
        
        return nativeAdView
    }
    
    // MARK: IB Actions
    
    @IBAction func loadAd()
    {
        cleanUpAdIfNeeded()
        
        nativeAdLoader.loadAd()
    }
    
    @IBAction func showAd()
    {
        if let nativeAd
        {
            if nativeAd.nativeAd!.isExpired
            {
                nativeAdLoader.destroy(nativeAd)
                nativeAdLoader.loadAd()
                
                showAdButton.isEnabled = false
                return
            }
            
            nativeAdView = createNativeAdView()
            nativeAdLoader.renderNativeAdView(nativeAdView, with: nativeAd)
            nativeAdContainerView.addSubview(nativeAdView)
            
            // Set to false if modifying constraints after adding the ad view to your layout
            nativeAdContainerView.translatesAutoresizingMaskIntoConstraints = false
            
            // Set ad view to span width and height of container and center the ad
            nativeAdContainerView.widthAnchor.constraint(equalTo: nativeAdView.widthAnchor).isActive = true
            nativeAdContainerView.heightAnchor.constraint(equalTo: nativeAdView.heightAnchor).isActive = true
            nativeAdContainerView.centerXAnchor.constraint(equalTo: nativeAdView.centerXAnchor).isActive = true
            nativeAdContainerView.centerYAnchor.constraint(equalTo: nativeAdView.centerYAnchor).isActive = true
            
            showAdButton.isEnabled = false
        }
    }
}

extension ALMAXManualNativeLateBindingAdViewController: MANativeAdDelegate
{
    func didLoadNativeAd(_ maxNativeAdView: MANativeAdView?, for ad: MAAd)
    {
        logCallback()
        
        // Save ad to be rendered later
        nativeAd = ad
        
        showAdButton.isEnabled = true
    }
    
    func didFailToLoadNativeAd(forAdUnitIdentifier adUnitIdentifier: String, withError error: MAError)
    {
        logCallback()
    }
    
    func didClickNativeAd(_ ad: MAAd)
    {
        logCallback()
    }
    
    func didExpireNativeAd(_ ad: MAAd)
    {
        logCallback()
        loadAd()
    }
}

extension ALMAXManualNativeLateBindingAdViewController: MAAdRevenueDelegate
{
    // MARK: MAAdRevenueDelegate Protocol
    
    func didPayRevenue(for ad: MAAd)
    {
        logCallback()
        
        let adjustAdRevenue = ADJAdRevenue(source: "applovin_max_sdk")!
        adjustAdRevenue.setRevenue(ad.revenue, currency: "USD")
        adjustAdRevenue.setAdRevenueNetwork(ad.networkName)
        adjustAdRevenue.setAdRevenueUnit(ad.adUnitIdentifier)
        if let placement = ad.placement
        {
            adjustAdRevenue.setAdRevenuePlacement(placement)
        }
            
        Adjust.trackAdRevenue(adjustAdRevenue)
    }
}
