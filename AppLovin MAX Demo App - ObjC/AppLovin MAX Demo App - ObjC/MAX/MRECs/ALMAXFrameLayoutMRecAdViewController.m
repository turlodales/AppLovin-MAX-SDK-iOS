//
//  ALMAXFrameLayoutMRecAdViewController.m
//  DemoApp-ObjC
//
//  Created by Andrew Tian on 1/23/20.
//  Copyright © 2020 AppLovin Corporation. All rights reserved.
//

#import "ALMAXFrameLayoutMRecAdViewController.h"
#import <AdjustSdk/AdjustSdk.h>
#import <AppLovinSDK/AppLovinSDK.h>

@interface ALMAXFrameLayoutMRecAdViewController()<MAAdViewAdDelegate, MAAdRevenueDelegate>
@property (nonatomic, strong) MAAdView *adView;
@end

@implementation ALMAXFrameLayoutMRecAdViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.adView = [[MAAdView alloc] initWithAdUnitIdentifier: @"YOUR_AD_UNIT_ID" adFormat: MAAdFormat.mrec];
    
    self.adView.delegate = self;
    self.adView.revenueDelegate = self;
    
    // Dimensions
    CGFloat width = 300;
    CGFloat height = 250;
    CGFloat x = self.view.center.x - 150;
    CGFloat y = 0;
    
    self.adView.frame = CGRectMake(x, y, width, height);
    
    // Set background or background color for MRECs to be fully functional
    self.adView.backgroundColor = UIColor.blackColor;
    
    [self.view addSubview: self.adView];
    
    // Load the first ad
    [self.adView loadAd];
}

#pragma mark - MAAdDelegate Protocol

- (void)didLoadAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didFailToLoadAdForAdUnitIdentifier:(NSString *)adUnitIdentifier withError:(MAError *)error
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didDisplayAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didHideAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didClickAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didFailToDisplayAd:(MAAd *)ad withError:(MAError *)error
{
    [self logCallback: __PRETTY_FUNCTION__];
}

#pragma mark - MAAdViewAdDelegate Protocol

- (void)didExpandAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didCollapseAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

#pragma mark - MAAdRevenueDelegate Protocol

- (void)didPayRevenueForAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
    
    ADJAdRevenue *adjustAdRevenue = [[ADJAdRevenue alloc] initWithSource: @"applovin_max_sdk"];
    [adjustAdRevenue setRevenue: ad.revenue currency: @"USD"];
    [adjustAdRevenue setAdRevenueNetwork: ad.networkName];
    [adjustAdRevenue setAdRevenueUnit: ad.adUnitIdentifier];
    [adjustAdRevenue setAdRevenuePlacement: ad.placement];
        
    [Adjust trackAdRevenue: adjustAdRevenue];
}

@end
