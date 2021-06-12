.class public Lcom/mapps/android/view/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/AdView$CameraAnim;,
        Lcom/mapps/android/view/AdView$OnSSPAdmListener;,
        Lcom/mapps/android/view/AdView$SDKView;,
        Lcom/mapps/android/view/AdView$SDKWebView;,
        Lcom/mapps/android/view/AdView$SSPAdmState;
    }
.end annotation


# static fields
.field private static CURRENTSSP:Ljava/lang/String; = "n"

.field public static SAVEREQUESTKEY:Ljava/lang/String; = ""


# instance fields
.field private CANONICAL_PATH:Ljava/lang/String;

.field private final IO_BUFFER_SIZE:I

.field private final MEZZO_DIRECTORY:Ljava/lang/String;

.field private final MEZZO_IMAGE:Ljava/lang/String;

.field private SendMsghandler:Landroid/os/Handler;

.field private URL_TAG:Ljava/lang/String;

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field private adInterval:Z

.field private adLinkListener:Lcom/mz/common/listener/AdLinkListener;

.field private adbean:Lcom/mz/common/network/data/DataNTBanner;

.field private bAnimStart:Z

.field public bAnimate:Z

.field private bExitLogo:Z

.field private bPtLockeMode:Z

.field private bannerConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

.field bitmap:Landroid/graphics/Bitmap;

.field private codeType:Ljava/lang/String;

.field private currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

.field private default_iv:Landroid/widget/ImageView;

.field private image1:Landroid/widget/RelativeLayout;

.field private image2:Landroid/widget/RelativeLayout;

.field imageLoadCompleteHandler:Landroid/os/Handler;

.field imageLoadFailHandler:Landroid/os/Handler;

.field imageTypeBgColorHandler:Landroid/os/Handler;

.field private isErrorState:Z

.field private isFirst:Z

.field private isFirstImage:Z

.field private isFirstShow:Z

.field private isFirstShow2:Z

.field private isLandingGo:Z

.field private mAdListener:Lcom/mz/common/listener/AdListener;

.field private mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

.field private mBaseDensity:I

.field private mBaseHeight:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsGPSUse:Z

.field private mLocationType:I

.field private mRotationTime:I

.field private mRunable:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSdkDrawable:Landroid/graphics/drawable/Drawable;

.field private mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

.field private mSizeHeight:I

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private m_displayHeight:I

.field private m_displayWith:I

.field private media_type:I

.field private mfinNetWork:Z

.field private mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

.field private mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

.field private mreload_count:I

.field private mreload_time:J

.field public nBackStrech:I

.field private nFileIdx:I

.field private nt:Lcom/mz/common/network/Nt;

.field private outLinkTag:Ljava/lang/String;

.field private parcel:Lcom/mapps/android/share/ParcelHelper;

.field private progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

.field private reload:Z

.field private rotationImgBitmap:Landroid/graphics/Bitmap;

.field private rotationSuccessHandler:Landroid/os/Handler;

.field private rotationSuccessSSLHandler:Landroid/os/Handler;

.field private uiLoad:Lcom/mz/common/ui/UILoad;

.field private updateResults:Ljava/lang/Runnable;

.field private useOutClickAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5

    .line 227
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 102
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    .line 103
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    const-string v2, ""

    .line 104
    iput-object v2, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->reload:Z

    const-string v2, ""

    .line 106
    iput-object v2, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    .line 107
    iput v2, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 109
    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    .line 110
    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    const-string v3, ""

    .line 112
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    const-string v3, ""

    .line 113
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    const-string v3, ""

    .line 114
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    const-string v3, ""

    .line 115
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    const-string v3, ""

    .line 116
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    const-string v3, ""

    .line 117
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    const-string v3, ""

    .line 118
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 121
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 122
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    .line 123
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    .line 124
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    .line 125
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    .line 126
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    .line 128
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    .line 129
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    .line 130
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 131
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    const/16 v3, 0x2710

    .line 133
    iput v3, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    const-string v3, "/mezzo/"

    .line 134
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    const-string v3, "image"

    .line 135
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->MEZZO_IMAGE:Ljava/lang/String;

    const/16 v3, 0x1000

    .line 136
    iput v3, p0, Lcom/mapps/android/view/AdView;->IO_BUFFER_SIZE:I

    .line 137
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    .line 138
    iput v1, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    .line 140
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    .line 141
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    .line 143
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 146
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    .line 147
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    const/16 v3, 0x64

    .line 149
    iput v3, p0, Lcom/mapps/android/view/AdView;->mSizeHeight:I

    const/16 v3, 0xa0

    .line 150
    iput v3, p0, Lcom/mapps/android/view/AdView;->mBaseDensity:I

    const/16 v3, 0x32

    .line 153
    iput v3, p0, Lcom/mapps/android/view/AdView;->mBaseHeight:I

    .line 154
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    .line 155
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    const-wide/16 v3, 0x7d0

    .line 156
    iput-wide v3, p0, Lcom/mapps/android/view/AdView;->mreload_time:J

    .line 160
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 163
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    const-string v3, ""

    .line 165
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 397
    new-instance v3, Lcom/mapps/android/view/AdView$1;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$1;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 571
    new-instance v3, Lcom/mapps/android/view/AdView$2;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$2;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->bannerConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 677
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bAnimate:Z

    .line 1001
    new-instance v2, Lcom/mapps/android/view/AdView$3;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$3;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->updateResults:Ljava/lang/Runnable;

    .line 1028
    new-instance v2, Lcom/mapps/android/view/AdView$4;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$4;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    .line 1062
    new-instance v2, Lcom/mapps/android/view/AdView$5;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$5;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    .line 1176
    new-instance v2, Lcom/mapps/android/view/AdView$6;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$6;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    .line 1196
    new-instance v2, Lcom/mapps/android/view/AdView$7;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$7;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    .line 1210
    new-instance v2, Lcom/mapps/android/view/AdView$8;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$8;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    .line 1532
    iput v1, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    .line 1617
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 2360
    new-instance v1, Lcom/mapps/android/view/AdView$9;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$9;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v1, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    .line 2384
    new-instance v1, Lcom/mapps/android/view/AdView$10;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$10;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v1, p0, Lcom/mapps/android/view/AdView;->mRunable:Ljava/lang/Runnable;

    .line 2593
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 228
    iput p4, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 229
    iput p2, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 230
    iput p3, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 231
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 102
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    .line 103
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    const-string v2, ""

    .line 104
    iput-object v2, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->reload:Z

    const-string v2, ""

    .line 106
    iput-object v2, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    .line 107
    iput v2, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 109
    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    .line 110
    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    const-string v3, ""

    .line 112
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    const-string v3, ""

    .line 113
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    const-string v3, ""

    .line 114
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    const-string v3, ""

    .line 115
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    const-string v3, ""

    .line 116
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    const-string v3, ""

    .line 117
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    const-string v3, ""

    .line 118
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 121
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 122
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    .line 123
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    .line 124
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    .line 125
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    .line 126
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    .line 128
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    .line 129
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    .line 130
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 131
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    const/16 v3, 0x2710

    .line 133
    iput v3, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    const-string v3, "/mezzo/"

    .line 134
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    const-string v3, "image"

    .line 135
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->MEZZO_IMAGE:Ljava/lang/String;

    const/16 v3, 0x1000

    .line 136
    iput v3, p0, Lcom/mapps/android/view/AdView;->IO_BUFFER_SIZE:I

    .line 137
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    .line 138
    iput v1, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    .line 140
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    .line 141
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    .line 143
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 146
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    .line 147
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    const/16 v3, 0x64

    .line 149
    iput v3, p0, Lcom/mapps/android/view/AdView;->mSizeHeight:I

    const/16 v3, 0xa0

    .line 150
    iput v3, p0, Lcom/mapps/android/view/AdView;->mBaseDensity:I

    const/16 v3, 0x32

    .line 153
    iput v3, p0, Lcom/mapps/android/view/AdView;->mBaseHeight:I

    .line 154
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    .line 155
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    const-wide/16 v3, 0x7d0

    .line 156
    iput-wide v3, p0, Lcom/mapps/android/view/AdView;->mreload_time:J

    .line 160
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 163
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    const-string v3, ""

    .line 165
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 397
    new-instance v3, Lcom/mapps/android/view/AdView$1;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$1;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 571
    new-instance v3, Lcom/mapps/android/view/AdView$2;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$2;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->bannerConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 677
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bAnimate:Z

    .line 1001
    new-instance v3, Lcom/mapps/android/view/AdView$3;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$3;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->updateResults:Ljava/lang/Runnable;

    .line 1028
    new-instance v3, Lcom/mapps/android/view/AdView$4;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$4;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    .line 1062
    new-instance v3, Lcom/mapps/android/view/AdView$5;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$5;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    .line 1176
    new-instance v3, Lcom/mapps/android/view/AdView$6;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$6;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    .line 1196
    new-instance v3, Lcom/mapps/android/view/AdView$7;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$7;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    .line 1210
    new-instance v3, Lcom/mapps/android/view/AdView$8;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$8;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    .line 1532
    iput v1, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    .line 1617
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 2360
    new-instance v3, Lcom/mapps/android/view/AdView$9;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$9;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    .line 2384
    new-instance v3, Lcom/mapps/android/view/AdView$10;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdView$10;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mRunable:Ljava/lang/Runnable;

    .line 2593
    iput-object v0, p0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 236
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V

    .line 237
    new-instance p1, Lcom/mapps/android/share/ParcelHelper;

    const-string v0, ""

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/mapps/android/share/ParcelHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    if-eqz p2, :cond_0

    .line 239
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    invoke-virtual {p1, v0}, Lcom/mapps/android/share/ParcelHelper;->getStyleableArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 240
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    const-string v3, "backgroundStretch"

    invoke-virtual {p2, v0, v3}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 242
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    const-string v2, "locationType"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 243
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    const-string v2, "publisherCode"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    .line 244
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    const-string v2, "mediaCode"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    .line 245
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    const-string v2, "sectionCode"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    .line 246
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_AdView"

    const-string v2, "mediaType"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mapps/android/view/AdView;->media_type:I

    const-string p2, "html"

    .line 247
    invoke-direct {p0, p2}, Lcom/mapps/android/view/AdView;->init(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    const-string p1, "attrs is null"

    .line 250
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private ImgDelAfterDateCheck(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "[.]"

    const-string v1, "_"

    .line 1629
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1630
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const-string v1, "Search_of_endtime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1631
    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private RotationAnimationWebView()V
    .locals 3

    .line 2315
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2316
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v0, :cond_4

    .line 2317
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$0(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$0(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 2321
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataBannerAD;

    .line 2322
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2323
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2324
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2326
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    .line 2329
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    goto :goto_1

    .line 2333
    :cond_3
    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    .line 2334
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    :cond_4
    :goto_1
    return-void
.end method

.method private RotationImage(I)V
    .locals 11

    const/4 v0, 0x0

    .line 1462
    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 1463
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    if-eqz v1, :cond_c

    .line 1464
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v1

    if-lez v1, :cond_b

    .line 1465
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v1

    check-cast v1, Lcom/mz/common/network/data/DataBannerAD;

    .line 1466
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTBanner;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTBanner;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 1467
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_7

    .line 1468
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz p1, :cond_0

    .line 1469
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p1, v0}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1470
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz p1, :cond_1

    .line 1471
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {p1, v3}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1472
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz p1, :cond_2

    .line 1473
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {p1, v3}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1475
    :cond_2
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-nez p1, :cond_4

    .line 1476
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataBannerAD;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 1478
    new-instance p1, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v6, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataBannerAD;->i()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataBannerAD;->d()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1483
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1484
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1483
    invoke-virtual {p1, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1485
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/16 p1, -0xbb8

    .line 1480
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    return-void

    .line 1487
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz p1, :cond_5

    .line 1488
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {p1, v3}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1489
    :cond_5
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz p1, :cond_6

    .line 1490
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {p1, v3}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1491
    :cond_6
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->RotationAnimationWebView()V

    .line 1492
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 1493
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void

    .line 1498
    :cond_7
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v2, :cond_8

    .line 1499
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1500
    :cond_8
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v2, :cond_9

    .line 1501
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v2, v0}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1502
    :cond_9
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v2, :cond_a

    .line 1503
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v2, v0}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1506
    :cond_a
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataBannerAD;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/mapps/android/view/AdView;->imageLoadConnectionThread(Ljava/lang/String;II)V

    goto :goto_1

    :cond_b
    const/16 p1, -0x2bc

    .line 1508
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    :cond_c
    :goto_1
    return-void
.end method

.method private RotationSSPImage(ILcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    .line 1306
    iput-boolean v7, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 1307
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1308
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v8, 0x8

    if-ne v1, v0, :cond_3

    .line 1310
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v0, v8}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, v7}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, v7}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1316
    :cond_2
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v0

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/mapps/android/view/AdView;->imageLoadSSLConnectionThread(Ljava/lang/String;IILcom/mz/common/network/data/DataNTSSP;)V

    goto/16 :goto_2

    .line 1318
    :cond_3
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v2, :cond_4

    .line 1319
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v2, v7}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1320
    :cond_4
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v2, :cond_5

    .line 1321
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v2, v8}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1322
    :cond_5
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v2, :cond_6

    .line 1323
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v2, v8}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1324
    :cond_6
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/4 v3, 0x2

    if-nez v2, :cond_9

    if-ne v3, v0, :cond_7

    .line 1326
    new-instance v9, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v5

    .line 1327
    new-instance v6, Lcom/mapps/android/view/AdView$31;

    invoke-direct {v6, p0, p2}, Lcom/mapps/android/view/AdView$31;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1326
    iput-object v9, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    goto :goto_0

    .line 1341
    :cond_7
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 1342
    new-instance v9, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v5

    .line 1343
    new-instance v6, Lcom/mapps/android/view/AdView$32;

    invoke-direct {v6, p0, p2}, Lcom/mapps/android/view/AdView$32;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1342
    iput-object v9, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    goto :goto_0

    .line 1357
    :cond_8
    new-instance v9, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1360
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1361
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1360
    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_9
    if-ne v3, v0, :cond_a

    .line 1365
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Lcom/mapps/android/view/AdView$33;

    invoke-direct {v1, p0, p2}, Lcom/mapps/android/view/AdView$33;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1378
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changBackgroundColor(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1381
    :cond_a
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1382
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Lcom/mapps/android/view/AdView$34;

    invoke-direct {v1, p0, p2}, Lcom/mapps/android/view/AdView$34;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1395
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changBackgroundColor(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1399
    :cond_b
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1400
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mapps/android/view/AdView$SDKWebView;->changBackgroundColor(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    .line 1405
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_c

    .line 1406
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, v8}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1407
    :cond_c
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_d

    .line 1408
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, v8}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1410
    :cond_d
    invoke-direct {p0, v7}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 1411
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1412
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1413
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    :goto_2
    return-void
.end method

.method private SendImpsToServer()V
    .locals 6

    .line 1576
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataBannerAD;

    const-string v2, "sendapi -->************************************ "

    .line 1578
    invoke-static {v2}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 1579
    new-instance v2, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1580
    new-instance v3, Lcom/mapps/android/view/AdView$37;

    invoke-direct {v3, p0, v0}, Lcom/mapps/android/view/AdView$37;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataBannerAD;)V

    invoke-virtual {v2, v3}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1598
    new-instance v0, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v3, v4, v1, v1}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    .line 1599
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v0, v3}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1600
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private SendTrackkingToServer(Ljava/lang/String;)V
    .locals 2

    .line 1553
    invoke-static {p1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$36;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$36;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1571
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[.]"

    const-string v1, "_"

    .line 1620
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1621
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 1622
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const-string v1, "Search_of_endtime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1623
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1624
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->requestUseSSp()V

    return-void
.end method

.method static synthetic access$10(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    return-void
.end method

.method static synthetic access$11(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 1532
    iget p0, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    return p0
.end method

.method static synthetic access$12(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .line 1532
    iput p1, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    return-void
.end method

.method static synthetic access$13(Lcom/mapps/android/view/AdView;)J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/mapps/android/view/AdView;->mreload_time:J

    return-wide v0
.end method

.method static synthetic access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->rotationImgBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$15(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 149
    iget p0, p0, Lcom/mapps/android/view/AdView;->mSizeHeight:I

    return p0
.end method

.method static synthetic access$16(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    return p0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    return p0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->requestNotSSp()V

    return-void
.end method

.method static synthetic access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$23(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    return-void
.end method

.method static synthetic access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    return-object p0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$26(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$27(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    return-void
.end method

.method static synthetic access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;
    .locals 0

    .line 1617
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$29(Lcom/mapps/android/view/AdView;FF)V
    .locals 0

    .line 2288
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdView;->applyRotation(FF)V

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    return p0
.end method

.method static synthetic access$30(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$31(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    return p0
.end method

.method static synthetic access$32(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;
    .locals 0

    .line 2384
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mRunable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$33(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    return p0
.end method

.method static synthetic access$34(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    return-void
.end method

.method static synthetic access$35(Lcom/mapps/android/view/AdView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .line 2360
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$36(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    return-void
.end method

.method static synthetic access$37(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    return p0
.end method

.method static synthetic access$38(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    return-void
.end method

.method static synthetic access$39(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 2530
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->getSDKHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .line 1461
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->RotationImage(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    return-void
.end method

.method static synthetic access$41()Ljava/lang/String;
    .locals 1

    .line 169
    sget-object v0, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$43(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    return p0
.end method

.method static synthetic access$44(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    return p0
.end method

.method static synthetic access$45(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    return p0
.end method

.method static synthetic access$46(Lcom/mapps/android/view/AdView;)Lcom/mz/common/ui/UILoad;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->uiLoad:Lcom/mz/common/ui/UILoad;

    return-object p0
.end method

.method static synthetic access$47(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    return p0
.end method

.method static synthetic access$48(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->rotationImgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$49(Landroid/widget/ImageView;)V
    .locals 0

    .line 2515
    invoke-static {p0}, Lcom/mapps/android/view/AdView;->recycleBitmap(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    return-object p0
.end method

.method static synthetic access$50(Lcom/mapps/android/view/AdView;I)Ljava/lang/String;
    .locals 0

    .line 1534
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->getClickTag(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    return-object p0
.end method

.method static synthetic access$52(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestSSPClick(Lcom/mz/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$53(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    return p0
.end method

.method static synthetic access$54(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    return-void
.end method

.method static synthetic access$55(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$56(Lcom/mapps/android/view/AdView;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    return p0
.end method

.method static synthetic access$57(Lcom/mapps/android/view/AdView;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/mapps/android/view/AdView;->media_type:I

    return p0
.end method

.method static synthetic access$58(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$59(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTBanner;)V
    .locals 0

    .line 1007
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->chargeableBannerType(Lcom/mz/common/network/data/DataNTBanner;)V

    return-void
.end method

.method static synthetic access$60(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$61(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$62(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    return-void
.end method

.method static synthetic access$63(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$66(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/Nt;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    return-void
.end method

.method static synthetic access$67(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/Nt;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    return-object p0
.end method

.method static synthetic access$68(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/Nt$OnProgressbarListener;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-object p0
.end method

.method static synthetic access$69(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)Z
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1575
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->SendImpsToServer()V

    return-void
.end method

.method static synthetic access$70(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$71(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$72(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$73(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$74(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->codeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$75(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/request/OnConnectionListener;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->bannerConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    return-object p0
.end method

.method static synthetic access$76(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->reload:Z

    return-void
.end method

.method static synthetic access$77(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    return-void
.end method

.method static synthetic access$78(Lcom/mapps/android/view/AdView;ILcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .line 1305
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/view/AdView;->RotationSSPImage(ILcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$79(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->chargeable(Z)V

    return-void
.end method

.method static synthetic access$80(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$81(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .line 1515
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->imageTypeBgColor(I)V

    return-void
.end method

.method private applyRotation(FF)V
    .locals 3

    .line 2289
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2290
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 2292
    new-instance v1, Lcom/mz/common/Flip3dAnimation;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/mz/common/Flip3dAnimation;-><init>(FFFF)V

    .line 2294
    iget-boolean p1, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    if-nez p1, :cond_0

    const-wide/16 p1, 0x1f4

    .line 2295
    invoke-virtual {v1, p1, p2}, Lcom/mz/common/Flip3dAnimation;->setDuration(J)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1

    .line 2297
    invoke-virtual {v1, p1, p2}, Lcom/mz/common/Flip3dAnimation;->setDuration(J)V

    :goto_0
    const/4 p1, 0x1

    .line 2299
    invoke-virtual {v1, p1}, Lcom/mz/common/Flip3dAnimation;->setFillAfter(Z)V

    .line 2300
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, p2}, Lcom/mz/common/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2302
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, p2}, Lcom/mz/common/Flip3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2304
    iget-boolean p2, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    if-eqz p2, :cond_1

    .line 2305
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 2307
    :cond_1
    iget-object p2, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2310
    :goto_1
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    return-void
.end method

.method private chargeable(Z)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private chargeableBannerType(Lcom/mz/common/network/data/DataNTBanner;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1009
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1010
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "4"

    .line 1011
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1013
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->chargeable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1016
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->chargeable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private common(Landroid/content/Context;)V
    .locals 3

    .line 187
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lcom/mz/common/ui/UILoad;

    invoke-direct {v0}, Lcom/mz/common/ui/UILoad;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->uiLoad:Lcom/mz/common/ui/UILoad;

    .line 190
    new-instance v0, Lcom/mapps/android/view/AdView$11;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$11;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 203
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/mapps/android/view/AdView$12;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2502
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2506
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2510
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 2512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2507
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 957
    new-array v0, v0, [B

    .line 959
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 960
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private getClickTag(I)Ljava/lang/String;
    .locals 1

    const-string p1, ""

    .line 1536
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    if-eqz v0, :cond_1

    .line 1537
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 1538
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataBannerAD;

    .line 1539
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1540
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1542
    :cond_0
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->SendTrackkingToServer(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->c()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getSDKHeight()I
    .locals 2

    .line 2532
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    .line 2533
    iget v1, p0, Lcom/mapps/android/view/AdView;->mBaseDensity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2534
    iget v1, p0, Lcom/mapps/android/view/AdView;->mBaseHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private imageLoadConnectionThread(Ljava/lang/String;II)V
    .locals 2

    .line 1086
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mapps/android/view/AdView$29;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1127
    :catch_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private imageLoadSSLConnectionThread(Ljava/lang/String;IILcom/mz/common/network/data/DataNTSSP;)V
    .locals 8

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/mezzo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "image"

    .line 1133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string p1, ""

    .line 1135
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1136
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdView$30;

    move-object v2, v0

    move-object v3, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mapps/android/view/AdView$30;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;IILcom/mz/common/network/data/DataNTSSP;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1169
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1172
    :catch_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method private imageTypeBgColor(I)V
    .locals 1

    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, p1}, Lcom/mapps/android/view/AdView$SDKView;->setBackgroundColor(I)V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, p1}, Lcom/mapps/android/view/AdView$SDKView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1528
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->codeType:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->GetDisplayInfo()V

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0, p1}, Lcom/mapps/android/view/AdView;->Initalize(ZLjava/lang/String;)V

    return-void
.end method

.method private onFailedToReceive(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const-string p1, "mAdListner is null"

    .line 182
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static recycleBitmap(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 2517
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2519
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2520
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2522
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 2524
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method private requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)Z
    .locals 3

    .line 378
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mz/common/network/data/DataNTBanner;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestSSPImageFileSave(Lcom/mz/common/network/data/DataNTSSP;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/mapps/android/view/AdView;->endSSPOperator(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    .line 390
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    const-string p1, "y"

    .line 391
    sput-object p1, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    return v1
.end method

.method private requestHTML()V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$16;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$16;-><init>(Lcom/mapps/android/view/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requestImageFileSave(Lcom/mz/common/network/data/DataBannerAD;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 322
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$14;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$14;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataBannerAD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 330
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private requestNotSSp()V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->requestHTML()V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataBannerAD;

    .line 367
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 368
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->requestImageFileSave(Lcom/mz/common/network/data/DataBannerAD;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x2bc

    .line 371
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    :cond_2
    :goto_0
    const-string v0, "n"

    .line 374
    sput-object v0, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    return-void
.end method

.method private requestSSPClick(Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 1420
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    sget-object v0, Lcom/mz/common/network/data/DataNTSSP$SSPCLICK;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1422
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "i_request_key"

    .line 1423
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAVEREQUESTKEY -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mapps/android/view/AdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_key -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1426
    sget-object v1, Lcom/mapps/android/view/AdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendapi -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1428
    new-instance v1, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    .line 1429
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1430
    new-instance v1, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1431
    new-instance v2, Lcom/mapps/android/view/AdView$35;

    invoke-direct {v2, p0, p1, v0}, Lcom/mapps/android/view/AdView$35;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1452
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1456
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : \uc774\ubbf8 \ubcf4\ub0c8\uc74c \uc548\ubcf4\ub0c4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestSSPImageFileSave(Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 337
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$15;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$15;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private requestUseSSp()V
    .locals 4

    .line 414
    new-instance v0, Lcom/mapps/android/view/AdView$17;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$17;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 460
    new-instance v1, Lcom/mapps/android/view/AdView$18;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$18;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 471
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/AdView$19;

    invoke-direct {v3, p0, v0, v1}, Lcom/mapps/android/view/AdView$19;-><init>(Lcom/mapps/android/view/AdView;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public EndOperator()V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    const/16 v1, -0x2bc

    if-eqz v0, :cond_6

    .line 967
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 968
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 969
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    const-string v2, "1"

    .line 972
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, -0x12c

    .line 973
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_0

    :cond_1
    const-string v2, "2"

    .line 974
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, -0x190

    .line 975
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_0

    :cond_2
    const-string v2, "3"

    .line 976
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, -0x1f4

    .line 977
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_0

    :cond_3
    const-string v2, "4"

    .line 978
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, -0x258

    .line 979
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_0

    :cond_4
    const-string v2, "5"

    .line 980
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 983
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 984
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 989
    :cond_6
    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public GetDisplayInfo()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 264
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    .line 266
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    return-void
.end method

.method public GetPresentImageStatus()I
    .locals 1

    .line 1641
    iget v0, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    return v0
.end method

.method public ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    if-nez p3, :cond_0

    .line 877
    iget-object p3, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    if-eqz p3, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    .line 885
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-gtz p3, :cond_1

    goto/16 :goto_4

    .line 889
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 890
    new-instance p3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/mezzo/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "image"

    .line 891
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 892
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 896
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 897
    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mapps/android/view/AdView;->ImgDelAfterDateCheck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 898
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 901
    :cond_3
    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    .line 902
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    :cond_5
    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 912
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/share/ShareUtil;->getDeviceHeader()Ljava/lang/String;

    move-result-object v0

    const-string v2, "User-Agent"

    .line 913
    invoke-virtual {p1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xfa0

    .line 914
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0xbb8

    .line 915
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 916
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 917
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 919
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 920
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 922
    invoke-direct {p0, v0, v3}, Lcom/mapps/android/view/AdView;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 923
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 925
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 927
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 930
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 932
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_7

    .line 933
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 935
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 937
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 938
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result p1

    if-lez p1, :cond_7

    .line 939
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataBannerAD;

    .line 940
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->e()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    const-string p3, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 941
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataBannerAD;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mapps/android/view/AdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 943
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p3, 0x5

    const/4 v1, 0x7

    .line 944
    invoke-virtual {p1, p3, v1}, Ljava/util/Calendar;->add(II)V

    .line 945
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mapps/android/view/AdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 950
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 952
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method public Initalize(ZLjava/lang/String;)V
    .locals 1

    .line 270
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    .line 271
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    .line 272
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    .line 274
    new-instance p1, Lcom/mapps/android/view/AdView$13;

    invoke-direct {p1, p0, p2}, Lcom/mapps/android/view/AdView$13;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected Reload_ImageRequest(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 870
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 871
    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdView;->getReloadImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public SendRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 500
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    if-eqz v0, :cond_0

    .line 501
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    if-nez v0, :cond_0

    const/16 p1, -0x3e8

    .line 502
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 507
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->reload:Z

    if-nez v0, :cond_1

    .line 508
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 512
    :cond_1
    new-instance v4, Lcom/mapps/android/view/AdView$20;

    invoke-direct {v4, p0}, Lcom/mapps/android/view/AdView$20;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 534
    new-instance v5, Lcom/mapps/android/view/AdView$21;

    invoke-direct {v5, p0}, Lcom/mapps/android/view/AdView$21;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 545
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/mapps/android/view/AdView$22;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdView$22;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 568
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public SetDefaultImage(I)V
    .locals 4

    .line 1606
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1607
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 1608
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 1612
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1611
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1614
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public SetRotateTimer()V
    .locals 4

    .line 2480
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    if-eqz v0, :cond_3

    .line 2481
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 2485
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2486
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 2489
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2490
    iput v0, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x2710

    .line 2483
    iput v0, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    .line 2496
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2497
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public StartService()V
    .locals 3

    .line 807
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/share/ShareUtil;->version()V

    .line 808
    new-instance v0, Lcom/mapps/android/view/AdView$25;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$25;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 835
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$26;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdView$26;-><init>(Lcom/mapps/android/view/AdView;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 846
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public StopService()V
    .locals 2

    .line 785
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    if-eqz v0, :cond_1

    .line 793
    invoke-static {}, Lcom/mz/common/TraceGPS;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 796
    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 797
    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->reload:Z

    return-void
.end method

.method public creHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2631
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<HTML>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "<HEAD>"

    .line 2632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</HEAD>"

    .line 2633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<body style=\'margin:0,padding:0\',text-align:center,>"

    .line 2634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2635
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<img width=\'100%\'height=\'100%\'src=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</body>"

    .line 2636
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</html?"

    .line 2637
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2638
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public endSSPOperator(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/AdView$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/AdView$27;-><init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 851
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finalizeAdView()V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->finalizeSDKView()V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->finalizeSDKView()V

    :cond_1
    return-void
.end method

.method public getA_media()Ljava/lang/String;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method public getA_publisher()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getA_section()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;
    .locals 1

    .line 2651
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adLinkListener:Lcom/mz/common/listener/AdLinkListener;

    return-object v0
.end method

.method public getAdverInfoBean()Lcom/mz/common/network/data/DataNTBanner;
    .locals 1

    .line 2623
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    return-object v0
.end method

.method public getBackStrech(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2466
    invoke-static {p1, v0, v0, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2467
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2469
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p3, 0x4

    if-lt p2, p3, :cond_0

    .line 2470
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2472
    :cond_0
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCANONICAL_PATH()Ljava/lang/String;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public getImage1()Landroid/widget/RelativeLayout;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImage2()Landroid/widget/RelativeLayout;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getM_displayHeight()I
    .locals 1

    .line 709
    iget v0, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    return v0
.end method

.method public getM_displayWith()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    return v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia_type()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/mapps/android/view/AdView;->media_type:I

    return v0
.end method

.method public getRandingURL()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 2583
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 2584
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v1

    check-cast v1, Lcom/mz/common/network/data/DataBannerAD;

    .line 2585
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataBannerAD;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2586
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getReloadImage(Ljava/lang/String;)V
    .locals 2

    .line 2597
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2598
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$38;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$38;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2618
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public getURL_TAG()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 1

    .line 684
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public getmAdListener()Lcom/mz/common/listener/AdListener;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    return-object v0
.end method

.method public getmRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getnBackStrech()I
    .locals 1

    .line 631
    iget v0, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    return v0
.end method

.method public isAdLogo(Z)V
    .locals 0

    .line 2574
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    return-void
.end method

.method public isAnimateImageBanner(Z)V
    .locals 0

    .line 680
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bAnimate:Z

    return-void
.end method

.method public isMfinNetWork()Z
    .locals 1

    .line 725
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    return v0
.end method

.method public isUseOutClickAction()Z
    .locals 1

    .line 2642
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    return v0
.end method

.method public ismIsGPSUse()Z
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    return v0
.end method

.method protected onAdClick()V
    .locals 1

    const/4 v0, 0x3

    .line 1653
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 1654
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmAdListener()Lcom/mz/common/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmAdListener()Lcom/mz/common/listener/AdListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mz/common/listener/AdListener;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 859
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    return-void
.end method

.method public setAdLinkListener(Lcom/mz/common/listener/AdLinkListener;)V
    .locals 0

    .line 2655
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->adLinkListener:Lcom/mz/common/listener/AdLinkListener;

    return-void
.end method

.method public setAdListener(Lcom/mz/common/listener/AdListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 673
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    .line 640
    iput-object p2, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    .line 641
    iput-object p3, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    const-string p1, "java"

    .line 642
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->init(Ljava/lang/String;)V

    return-void
.end method

.method public setAdverInfoBean(Lcom/mz/common/network/data/DataNTBanner;)V
    .locals 0

    .line 2627
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mz/common/network/data/DataNTBanner;

    return-void
.end method

.method public setBackGround(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2443
    invoke-static {p1, v1, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2446
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2448
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2451
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_1

    .line 2452
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2454
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    return-void
.end method

.method public setLoaction(Z)V
    .locals 2

    .line 745
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$23;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$23;-><init>(Lcom/mapps/android/view/AdView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 752
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$24;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$24;-><init>(Lcom/mapps/android/view/AdView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 763
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setPointLockerMode(Z)V
    .locals 0

    .line 2578
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    return-void
.end method

.method public setUseOutClickAction(ZLjava/lang/String;)V
    .locals 0

    .line 2646
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    .line 2647
    iput-object p2, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public setnBackStrech(I)V
    .locals 0

    .line 635
    iput p1, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    return-void
.end method

.method public simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    .line 1038
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendapi -> api type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 1040
    new-instance v1, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    .line 1041
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1042
    new-instance v1, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1043
    new-instance p1, Lcom/mapps/android/view/AdView$28;

    invoke-direct {p1, p0, v0}, Lcom/mapps/android/view/AdView$28;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1059
    iget-object p1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mz/common/network/Nt;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, p2, v4

    invoke-virtual {p1, p2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
