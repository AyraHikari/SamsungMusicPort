.class public Lcom/mapps/android/view/EndingAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/EndingAdView$MyWebChromeClient;
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

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field adInterval:Z

.field private adbean:Lcom/mz/common/network/data/DataNTEnd;

.field bGotolinkType:Z

.field private banner_h:I

.field private banner_w:I

.field private btn_logo:Landroid/widget/ImageView;

.field private codeType:Ljava/lang/String;

.field private currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

.field private endConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

.field final failedToReceiveHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private htmlLoading:Ljava/lang/String;

.field public isCreate:Z

.field private isErrorState:Z

.field private isLandingGo:Z

.field private isTimeout:Z

.field private logoPostion:I

.field private mAdBitmap:Landroid/graphics/Bitmap;

.field private mAdListener:Lcom/mz/common/listener/AdListener;

.field private mBaseLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field public media_type:I

.field private myWebView:Landroid/webkit/WebView;

.field private nt:Lcom/mz/common/network/Nt;

.field private parcel:Lcom/mapps/android/share/ParcelHelper;

.field private progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

.field showEndingViewHandler:Landroid/os/Handler;

.field startEndingAdViewHandler:Landroid/os/Handler;

.field private timeoutHandler:Landroid/os/Handler;

.field private timeoutRun:Ljava/lang/Runnable;

.field private uiLoad:Lcom/mz/common/ui/UILoad;

.field public uudi_key:Ljava/lang/String;

.field private webloading_timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 175
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    const-string v1, "/mezzo/"

    .line 89
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    const-string v1, "image"

    .line 90
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_IMAGE:Ljava/lang/String;

    const/16 v1, 0x1000

    .line 91
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->IO_BUFFER_SIZE:I

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    const-string v1, ""

    .line 93
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    const-string v1, ""

    .line 94
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 96
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 100
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    .line 102
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 107
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    const-string v0, ""

    .line 108
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    const-string v0, "html"

    .line 110
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    const/16 v0, 0xbb8

    .line 115
    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->webloading_timeout:I

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->uudi_key:Ljava/lang/String;

    .line 119
    iput v2, p0, Lcom/mapps/android/view/EndingAdView;->logoPostion:I

    .line 120
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isCreate:Z

    .line 122
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->banner_w:I

    .line 123
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->banner_h:I

    .line 247
    new-instance v0, Lcom/mapps/android/view/EndingAdView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$1;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    .line 360
    new-instance v0, Lcom/mapps/android/view/EndingAdView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$2;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 552
    new-instance v0, Lcom/mapps/android/view/EndingAdView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$3;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->failedToReceiveHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Lcom/mapps/android/view/EndingAdView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$4;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 909
    new-instance v0, Lcom/mapps/android/view/EndingAdView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$5;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->showEndingViewHandler:Landroid/os/Handler;

    .line 1330
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    .line 1331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutHandler:Landroid/os/Handler;

    .line 1364
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    const-string v0, ""

    .line 1365
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->htmlLoading:Ljava/lang/String;

    const-string v0, "java"

    .line 176
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 181
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    const-string v1, "/mezzo/"

    .line 89
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    const-string v1, "image"

    .line 90
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_IMAGE:Ljava/lang/String;

    const/16 v1, 0x1000

    .line 91
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->IO_BUFFER_SIZE:I

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    const-string v1, ""

    .line 93
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    const-string v1, ""

    .line 94
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 96
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 100
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    .line 102
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 107
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    const-string v0, ""

    .line 108
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    const-string v0, "html"

    .line 110
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    const/16 v0, 0xbb8

    .line 115
    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->webloading_timeout:I

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->uudi_key:Ljava/lang/String;

    .line 119
    iput v2, p0, Lcom/mapps/android/view/EndingAdView;->logoPostion:I

    .line 120
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isCreate:Z

    .line 122
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->banner_w:I

    .line 123
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->banner_h:I

    .line 247
    new-instance v0, Lcom/mapps/android/view/EndingAdView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$1;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    .line 360
    new-instance v0, Lcom/mapps/android/view/EndingAdView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$2;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 552
    new-instance v0, Lcom/mapps/android/view/EndingAdView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$3;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->failedToReceiveHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Lcom/mapps/android/view/EndingAdView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$4;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 909
    new-instance v0, Lcom/mapps/android/view/EndingAdView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$5;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->showEndingViewHandler:Landroid/os/Handler;

    .line 1330
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    .line 1331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutHandler:Landroid/os/Handler;

    .line 1364
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    const-string v0, ""

    .line 1365
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->htmlLoading:Ljava/lang/String;

    .line 182
    iput p2, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    const-string p2, "java"

    .line 183
    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    const-string v1, "/mezzo/"

    .line 89
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    const-string v1, "image"

    .line 90
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_IMAGE:Ljava/lang/String;

    const/16 v1, 0x1000

    .line 91
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->IO_BUFFER_SIZE:I

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    const-string v1, ""

    .line 93
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    const-string v1, ""

    .line 94
    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 96
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 100
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    .line 102
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 107
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    const-string v0, ""

    .line 108
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    const-string v0, "html"

    .line 110
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    const/16 v0, 0xbb8

    .line 115
    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->webloading_timeout:I

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->uudi_key:Ljava/lang/String;

    .line 119
    iput v2, p0, Lcom/mapps/android/view/EndingAdView;->logoPostion:I

    .line 120
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isCreate:Z

    .line 122
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->banner_w:I

    .line 123
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->banner_h:I

    .line 247
    new-instance v0, Lcom/mapps/android/view/EndingAdView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$1;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    .line 360
    new-instance v0, Lcom/mapps/android/view/EndingAdView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$2;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 552
    new-instance v0, Lcom/mapps/android/view/EndingAdView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$3;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->failedToReceiveHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Lcom/mapps/android/view/EndingAdView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$4;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 909
    new-instance v0, Lcom/mapps/android/view/EndingAdView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$5;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->showEndingViewHandler:Landroid/os/Handler;

    .line 1330
    iput-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    .line 1331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutHandler:Landroid/os/Handler;

    .line 1364
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    const-string v0, ""

    .line 1365
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->htmlLoading:Ljava/lang/String;

    const-string v0, "html"

    .line 189
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V

    .line 192
    :try_start_0
    new-instance p1, Lcom/mapps/android/share/ParcelHelper;

    const-string v0, ""

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v2}, Lcom/mapps/android/share/ParcelHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    if-eqz p2, :cond_0

    .line 194
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_EndingAdView"

    invoke-virtual {p1, v0}, Lcom/mapps/android/share/ParcelHelper;->getStyleableArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_EndingAdView"

    const-string v2, "pCode"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 197
    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_EndingAdView"

    const-string v2, "mCode"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 198
    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_EndingAdView"

    const-string v2, "sCode"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    .line 199
    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v0, "com_mapps_android_view_EndingAdView"

    const-string v2, "media_Type"

    invoke-virtual {p2, v0, v2}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 200
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private ImgDelAfterDateCheck(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "[.]"

    const-string v1, "_"

    .line 726
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const-string v1, "Search_of_endtime_float"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 728
    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 730
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

.method private Initalize(I)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->setSize()V

    .line 308
    new-instance v0, Lcom/mapps/android/view/EndingAdView$11;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/EndingAdView$11;-><init>(Lcom/mapps/android/view/EndingAdView;I)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 313
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    .line 316
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    :goto_0
    return-void
.end method

.method private SendInfoToServer(Ljava/lang/String;)V
    .locals 0

    .line 1268
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestServer(Ljava/lang/String;)V

    return-void
.end method

.method private SendRequest(I)V
    .locals 2

    .line 571
    new-instance v0, Lcom/mapps/android/view/EndingAdView$18;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/EndingAdView$18;-><init>(Lcom/mapps/android/view/EndingAdView;I)V

    .line 604
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$19;

    invoke-direct {v1, p0, v0}, Lcom/mapps/android/view/EndingAdView$19;-><init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 630
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private SendTrackkingToServer(Ljava/lang/String;)V
    .locals 0

    .line 1264
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestServer(Ljava/lang/String;)V

    return-void
.end method

.method private SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[.]"

    const-string v1, "_"

    .line 716
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 719
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const-string v1, "Search_of_endtime_float"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 721
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->Initalize(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTEnd;)V
    .locals 0

    .line 855
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->chargeableBannerType(Lcom/mz/common/network/data/DataNTEnd;)V

    return-void
.end method

.method static synthetic access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$12(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$14(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$15(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$16(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestStartEndingAdView()V

    return-void
.end method

.method static synthetic access$18(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 569
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->SendRequest(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/Nt;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    return-void
.end method

.method static synthetic access$2(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTEnd;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    return-void
.end method

.method static synthetic access$20(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    return-object p0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt$OnProgressbarListener;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-object p0
.end method

.method static synthetic access$22(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$23(Lcom/mapps/android/view/EndingAdView;)I
    .locals 0

    .line 122
    iget p0, p0, Lcom/mapps/android/view/EndingAdView;->banner_w:I

    return p0
.end method

.method static synthetic access$24(Lcom/mapps/android/view/EndingAdView;)I
    .locals 0

    .line 123
    iget p0, p0, Lcom/mapps/android/view/EndingAdView;->banner_h:I

    return p0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$26(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$27(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$28(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$29(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/request/OnConnectionListener;
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    return-object p0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/mapps/android/view/EndingAdView;->logoPostion:I

    return-void
.end method

.method static synthetic access$30(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    return-void
.end method

.method static synthetic access$31(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;Z)V
    .locals 0

    .line 876
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/EndingAdView;->showEndingAdView(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$33(Lcom/mapps/android/view/EndingAdView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$34(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->btn_logo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$35(Lcom/mapps/android/view/EndingAdView;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/mapps/android/view/EndingAdView;->logoPostion:I

    return p0
.end method

.method static synthetic access$36(Lcom/mapps/android/view/EndingAdView;I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 1000
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->logoPos(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$37(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1148
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->sspLanding()V

    return-void
.end method

.method static synthetic access$38(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .line 1226
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestTouch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTSSP;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    return-object p0
.end method

.method static synthetic access$4(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestUseSSp()V

    return-void
.end method

.method static synthetic access$40(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    return-void
.end method

.method static synthetic access$41(Lcom/mapps/android/view/EndingAdView;I)Ljava/lang/String;
    .locals 0

    .line 1246
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->getClickTag(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/EndingAdView;Landroid/webkit/WebView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$43(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$44()Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$45(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 1182
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestSSPClick(Lcom/mz/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$46(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 0

    .line 1365
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->htmlLoading:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$47(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->htmlLoading:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1342
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->timeoutCheck()V

    return-void
.end method

.method static synthetic access$49(Lcom/mapps/android/view/EndingAdView;)Z
    .locals 0

    .line 1330
    iget-boolean p0, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    return p0
.end method

.method static synthetic access$5(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestNotSSp()V

    return-void
.end method

.method static synthetic access$50(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1334
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->timeoutHandlerRemove()V

    return-void
.end method

.method static synthetic access$51(Lcom/mapps/android/view/EndingAdView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->timeoutRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$52(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/mapps/android/view/EndingAdView;->webloading_timeout:I

    return-void
.end method

.method static synthetic access$53(Lcom/mapps/android/view/EndingAdView;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/mapps/android/view/EndingAdView;->webloading_timeout:I

    return p0
.end method

.method static synthetic access$54(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .line 1330
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    return-void
.end method

.method static synthetic access$55(Lcom/mapps/android/view/EndingAdView;)Landroid/os/Handler;
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$56(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/Runnable;
    .locals 0

    .line 1332
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6(Lcom/mapps/android/view/EndingAdView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$7(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->mBaseLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$8(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .line 870
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->chargeable(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    return-object p0
.end method

.method private chargeable(Z)V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private chargeableBannerType(Lcom/mz/common/network/data/DataNTEnd;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 857
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 858
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "4"

    .line 859
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 861
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->chargeable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 864
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->chargeable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private common(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isCreate:Z

    .line 127
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 128
    sput-object p1, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    .line 129
    new-instance p1, Lcom/mz/common/ui/UILoad;

    invoke-direct {p1}, Lcom/mz/common/ui/UILoad;-><init>()V

    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->uiLoad:Lcom/mz/common/ui/UILoad;

    .line 131
    new-instance p1, Lcom/mapps/android/view/EndingAdView$6;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/EndingAdView$6;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$7;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$7;-><init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 708
    new-array v0, v0, [B

    .line 710
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 711
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1069
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p7, p8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1070
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1071
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1072
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private createLogoBtn(Landroid/widget/RelativeLayout;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 965
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->btn_logo:Landroid/widget/ImageView;

    .line 966
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->uiLoad:Lcom/mz/common/ui/UILoad;

    sget-object v0, Lcom/mz/common/ui/UILoad$ImageBaseUrl;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mapps/android/view/EndingAdView$24;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/EndingAdView$24;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/mz/common/ui/UILoad;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private createWebView(Ljava/lang/String;)V
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$31;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$31;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getClickTag(I)Ljava/lang/String;
    .locals 1

    const-string p1, ""

    .line 1249
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListEndAD;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 1251
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataListEndAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataIEndAD;

    .line 1252
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1253
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1255
    :cond_0
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->SendTrackkingToServer(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->d()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private logoPos(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 13

    .line 1002
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double v0, v0, v2

    double-to-int v11, v0

    .line 1004
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double v0, v0, v2

    double-to-int v12, v0

    .line 1006
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    .line 1007
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v12, 0x2

    sub-int v8, v0, v1

    .line 1008
    div-int/lit8 v0, v11, 0x3

    .line 1009
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v12

    sub-int/2addr v1, v0

    packed-switch p1, :pswitch_data_0

    const/16 v5, 0xb

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v8, v0

    move v9, v0

    .line 1060
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_0
    const/16 v5, 0xb

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v8, v1

    move v9, v0

    .line 1055
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v8, v1

    .line 1047
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v7, v0

    move v8, v1

    .line 1042
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const/16 v5, 0xb

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v9, v0

    .line 1037
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const/16 v5, 0x9

    const/4 v6, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v7, v0

    .line 1027
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const/16 v5, 0xb

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v8, v0

    move v9, v0

    .line 1022
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const/16 v5, 0x9

    const/4 v6, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v8, v0

    .line 1017
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const/16 v5, 0x9

    const/4 v6, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v7, v0

    move v8, v0

    .line 1012
    invoke-direct/range {v4 .. v12}, Lcom/mapps/android/view/EndingAdView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onFailedToReceive(I)V
    .locals 1

    const/16 v0, 0x8

    .line 322
    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 323
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const-string p1, "ADSDK"

    const-string v0, "mAdListner is null"

    .line 326
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private progressBar(I)V
    .locals 0

    return-void
.end method

.method private requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 2

    .line 376
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "y"

    .line 377
    sput-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestSSPImageFileSave(Lcom/mz/common/network/data/DataNTSSP;)V

    .line 386
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "Ssp_imp"

    .line 389
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/EndingAdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 393
    :cond_2
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "Dsp_imp"

    .line 395
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/mapps/android/view/EndingAdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private requestFail(I)V
    .locals 1

    .line 564
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, -0xc8

    .line 565
    iput v0, p1, Landroid/os/Message;->what:I

    .line 566
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->failedToReceiveHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private requestImageFileSave(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 331
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p0}, Lcom/mapps/android/view/EndingAdView;->createLogoBtn(Landroid/widget/RelativeLayout;)V

    .line 333
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/EndingAdView$12;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private requestNotSSp()V
    .locals 4

    const-string v0, "n"

    .line 403
    sput-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListEndAD;->b()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "2"

    .line 405
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTEnd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0xbb8

    if-nez v0, :cond_1

    const-string v0, "3"

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTEnd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4"

    .line 406
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTEnd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605 NOT SUPPORT FILE !!!"

    .line 426
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto/16 :goto_1

    .line 407
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mz/common/network/data/DataListEndAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataIEndAD;

    .line 408
    iget v2, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 409
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 412
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 413
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mapps/android/view/EndingAdView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->SendInfoToServer(Ljava/lang/String;)V

    goto :goto_1

    .line 416
    :cond_3
    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto :goto_1

    .line 418
    :cond_4
    iget v2, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    if-nez v2, :cond_7

    .line 419
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 420
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_5
    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto :goto_1

    :cond_6
    const/16 v0, -0x2bc

    .line 430
    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private requestSSPClick(Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 1184
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    sget-object v0, Lcom/mz/common/network/data/DataNTSSP$SSPCLICK;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "i_request_key"

    .line 1188
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAVEREQUESTKEY -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_key -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1192
    sget-object v1, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1193
    new-instance v1, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    .line 1194
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1195
    new-instance v1, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1196
    new-instance v2, Lcom/mapps/android/view/EndingAdView$28;

    invoke-direct {v2, p0, p1, v0}, Lcom/mapps/android/view/EndingAdView$28;-><init>(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1217
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1219
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

    .line 344
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$13;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$13;-><init>(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private requestServer(Ljava/lang/String;)V
    .locals 4

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1273
    new-instance v0, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    .line 1274
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1275
    new-instance v0, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1276
    new-instance v1, Lcom/mapps/android/view/EndingAdView$30;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$30;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1292
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v0, v1, v3

    invoke-virtual {p1, v1}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestStartEndingAdView()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestTouch(Ljava/lang/String;)V
    .locals 2

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "strURL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1228
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 1229
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/EndingAdView$29;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$29;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    const-string v1, "TouchThread"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requestUseSSp()V
    .locals 4

    .line 461
    new-instance v0, Lcom/mapps/android/view/EndingAdView$15;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$15;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    .line 512
    new-instance v1, Lcom/mapps/android/view/EndingAdView$16;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$16;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    .line 523
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/EndingAdView$17;

    invoke-direct {v3, p0, v0, v1}, Lcom/mapps/android/view/EndingAdView$17;-><init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setSize()V
    .locals 3

    .line 1296
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1298
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mBaseLayout:Landroid/widget/RelativeLayout;

    .line 1299
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mBaseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showEndingAdView(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x8

    .line 877
    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 878
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/EndingAdView$22;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 906
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sspLanding()V
    .locals 3

    .line 1149
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1151
    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 1158
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->requestSSPClick(Lcom/mz/common/network/data/DataNTSSP;)V

    .line 1159
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "Dsp_click"

    .line 1161
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1162
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/EndingAdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 1164
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$27;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$27;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    const-string v2, "TouchThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private timeoutCheck()V
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 1344
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u2605timeoutCheck "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "( % )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    .line 1347
    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    .line 1348
    iget-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isCreate:Z

    if-eqz v2, :cond_1

    .line 1349
    sget-object v2, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    const-string v3, "y"

    if-ne v2, v3, :cond_0

    .line 1350
    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->chargeable(Z)V

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->chargeableBannerType(Lcom/mz/common/network/data/DataNTEnd;)V

    .line 1354
    :goto_0
    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    .line 1356
    :cond_1
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->timeoutHandlerRemove()V

    goto :goto_1

    .line 1359
    :cond_2
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isTimeout:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private timeoutHandlerRemove()V
    .locals 2

    const-string v0, "timeoutHandlerRemove"

    .line 1335
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1338
    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->timeoutRun:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method protected EndOperator()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$20;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$20;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected EndSSPOperator(Ljava/lang/String;Z)V
    .locals 1

    .line 846
    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    new-instance v0, Lcom/mapps/android/view/EndingAdView$21;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/EndingAdView$21;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    .line 742
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/mezzo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ending/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "image"

    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 749
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    goto :goto_2

    .line 750
    :cond_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mapps/android/view/EndingAdView;->ImgDelAfterDateCheck(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 751
    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 754
    :cond_1
    aget-object v4, v2, v3

    if-eqz v4, :cond_3

    .line 755
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 757
    invoke-virtual {p0, p2, p3}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;Z)V

    goto :goto_1

    .line 759
    :cond_2
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/16 v2, -0xc8

    .line 768
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 770
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapps/android/share/ShareUtil;->getDeviceHeader()Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    .line 771
    invoke-virtual {p1, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xfa0

    .line 772
    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0xbb8

    .line 773
    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 774
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 775
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 777
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 778
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 780
    invoke-direct {p0, v3, v5}, Lcom/mapps/android/view/EndingAdView;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 781
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 783
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 785
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 788
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_6

    .line 791
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 792
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 794
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 795
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataListEndAD;->b()I

    move-result p1

    if-lez p1, :cond_6

    .line 796
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataListEndAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataIEndAD;

    .line 797
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 798
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataIEndAD;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mapps/android/view/EndingAdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 800
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x7

    .line 801
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 802
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mapps/android/view/EndingAdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 807
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    iget-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-nez p1, :cond_8

    if-eqz p3, :cond_7

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 809
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 810
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    iget-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-nez p1, :cond_8

    if-eqz p3, :cond_7

    .line 815
    :goto_4
    invoke-virtual {p0, p2, p3}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;Z)V

    goto :goto_5

    .line 817
    :cond_7
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    goto :goto_5

    .line 820
    :cond_8
    invoke-direct {p0, v2}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    :goto_5
    return-void

    .line 813
    :goto_6
    iget-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-nez v0, :cond_a

    if-eqz p3, :cond_9

    .line 815
    invoke-virtual {p0, p2, p3}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;Z)V

    goto :goto_7

    .line 817
    :cond_9
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    goto :goto_7

    .line 820
    :cond_a
    invoke-direct {p0, v2}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    .line 822
    :goto_7
    throw p1
.end method

.method public LoadingURL(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1373
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 1374
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1375
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1376
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1377
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1378
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1379
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1380
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 1381
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1382
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1383
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1389
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$32;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$32;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1492
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$MyWebChromeClient;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1494
    sget-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    const-string v1, "y"

    if-ne v0, v1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->requestServer(Ljava/lang/String;)V

    .line 1502
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mapps/android/view/EndingAdView$33;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$33;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 1

    .line 1303
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method protected onAdClick()V
    .locals 1

    const/4 v0, 0x3

    .line 1142
    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    .line 1143
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0}, Lcom/mz/common/listener/AdListener;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 698
    iget-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->timeoutHandlerRemove()V

    const/4 v0, 0x0

    .line 704
    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->timeoutHandlerRemove()V

    .line 284
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1078
    sget-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    if-eqz v0, :cond_7

    .line 1080
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_7

    .line 1082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1084
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1085
    iget-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-eqz p1, :cond_1

    return v1

    .line 1089
    :cond_1
    new-instance p1, Lcom/mapps/android/view/EndingAdView$25;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/EndingAdView$25;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    return v1

    .line 1103
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1107
    :cond_3
    iget v0, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    if-ne v0, v1, :cond_7

    .line 1108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1110
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1111
    iget-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-eqz p1, :cond_5

    return v1

    .line 1115
    :cond_5
    new-instance p1, Lcom/mapps/android/view/EndingAdView$26;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/EndingAdView$26;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    return v1

    .line 1135
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    return-void
.end method

.method public setAdListener(Lcom/mz/common/listener/AdListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 289
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mAdListener:Lcom/mz/common/listener/AdListener;

    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 1309
    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 1310
    iput-object p3, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    return-void
.end method

.method public setBannerSize(II)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/mapps/android/view/EndingAdView;->banner_w:I

    .line 171
    iput p2, p0, Lcom/mapps/android/view/EndingAdView;->banner_h:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    return-void
.end method

.method public setLoaction(Z)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$9;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$9;-><init>(Lcom/mapps/android/view/EndingAdView;Z)V

    const-string p1, "setLoaction"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setLogoImageInfo(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p1, :cond_0

    .line 942
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 943
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/mapps/android/view/EndingAdView$23;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/EndingAdView$23;-><init>(Lcom/mapps/android/view/EndingAdView;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 958
    invoke-virtual {p0, p1}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$10;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$10;-><init>(Lcom/mapps/android/view/EndingAdView;Z)V

    const-string p1, "setPakageInfo"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0

    .line 1553
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    .line 435
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendapi --> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 437
    new-instance v1, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    .line 438
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 439
    new-instance v1, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 440
    new-instance p1, Lcom/mapps/android/view/EndingAdView$14;

    invoke-direct {p1, p0, v0}, Lcom/mapps/android/view/EndingAdView$14;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 456
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mz/common/network/Nt;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, p2, v4

    invoke-virtual {p1, p2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startEndingAdView()V
    .locals 4

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 211
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->timeoutHandlerRemove()V

    .line 212
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/share/ShareUtil;->version()V

    .line 213
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 215
    new-instance v3, Lcom/mapps/android/view/EndingAdView$8;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$8;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    .line 214
    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    .line 239
    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    :goto_0
    return-void
.end method
