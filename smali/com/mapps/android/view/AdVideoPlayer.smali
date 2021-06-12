.class public Lcom/mapps/android/view/AdVideoPlayer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;
    }
.end annotation


# static fields
.field public static final AD_ERRCODE:Ljava/lang/String; = "[ERRORCODE]"

.field private static final AD_VAST_ERR_MEDIA_LOCATION:I = 0x191

.field private static final AD_VAST_NOAD:I = 0x65

.field private static CURRENTSSP:Ljava/lang/String; = "n"

.field private static isMute:Z = true


# instance fields
.field private Buffper:I

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field adInterval:Z

.field blayout:Landroid/widget/RelativeLayout;

.field private bm:Landroid/graphics/Bitmap;

.field private breakway:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private commonHandler:Landroid/os/Handler;

.field private completeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private dataMovie:Lcom/mz/common/network/data/DataNTMovie;

.field private dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

.field private firstArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private first_time:I

.field private handlerErr:Landroid/os/Handler;

.field private handler_surface:Landroid/os/Handler;

.field private height:I

.field private holder:Landroid/view/SurfaceHolder;

.field initView:Z

.field private isStart:Z

.field private logo:Landroid/widget/ImageView;

.field public mAdPlayerErrorListner:Lcom/mz/common/listener/AdVideoPlayerErrorListener;

.field public mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

.field public mAdPlayerStartListner:Lcom/mz/common/listener/AdVideoPlayerListenerStart;

.field private mClickthrough:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImps_api:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreview:Landroid/view/SurfaceView;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenMode:I

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private mVclick_offset:I

.field private mVideoURI:Ljava/lang/String;

.field private m_AdClick:Landroid/widget/TextView;

.field private m_AdCount:Landroid/widget/TextView;

.field private m_Cate:Ljava/lang/String;

.field private m_Cate_content:Ljava/lang/String;

.field public m_nResonCode:I

.field public m_nlimtSec:I

.field private m_vcode:Ljava/lang/String;

.field private mbSkipConStatus:Z

.field private mbSkipStatus:Z

.field private mbStartMediaPlay:Z

.field private mclicktracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private midArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private mid_time:I

.field private misStart:Z

.field private movieConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

.field private moviesspConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

.field private mtHandler:Landroid/os/Handler;

.field private nt:Lcom/mz/common/network/Nt;

.field private onScreenTouchListener:Lcom/mz/common/listener/OnScreenTouchListener;

.field private percent:I

.field private phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

.field private progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

.field private progressbar_buffer:Landroid/widget/ProgressBar;

.field requestShowAdHandler:Landroid/os/Handler;

.field sendCallback:Z

.field private skipArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private soundMuteDrawable:Landroid/graphics/drawable/Drawable;

.field private soundOnDrawable:Landroid/graphics/drawable/Drawable;

.field private startArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private startIsMute:Z

.field private start_time:I

.field private thirdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private third_time:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private toggleButton:Landroid/widget/ToggleButton;

.field private total_time:I

.field private videoBackgroundColor:Ljava/lang/String;

.field private viewOver:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    const/16 v0, 0xf

    .line 93
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    const/4 v1, 0x1

    .line 95
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    const-string v2, ""

    .line 96
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    const-string v2, ""

    .line 97
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    const-string v2, ""

    .line 98
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    const-string v2, ""

    .line 99
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    const-string v2, ""

    .line 100
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    const-string v2, ""

    .line 101
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    const-string v2, ""

    .line 102
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    const-string v2, ""

    .line 105
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    const-string v2, ""

    .line 106
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    const/4 v2, 0x0

    .line 108
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    .line 109
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mz/common/listener/AdVideoPlayerErrorListener;

    .line 110
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mz/common/listener/AdVideoPlayerListenerStart;

    .line 112
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    const/4 v3, -0x1

    .line 113
    iput v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 115
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 118
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 119
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    const-string v3, ""

    .line 121
    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    .line 123
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    .line 125
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    .line 126
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    .line 127
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    .line 128
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 130
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    .line 131
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    .line 133
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    .line 134
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    .line 135
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    .line 136
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    .line 137
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    .line 138
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 139
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    .line 140
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    .line 142
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    .line 143
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    .line 144
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    .line 145
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    .line 146
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    .line 156
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    .line 161
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->logo:Landroid/widget/ImageView;

    .line 162
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->startIsMute:Z

    .line 195
    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$1;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->commonHandler:Landroid/os/Handler;

    .line 238
    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$2;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$2;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAdHandler:Landroid/os/Handler;

    .line 317
    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$3;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$3;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->moviesspConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 353
    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$4;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$4;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->movieConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 498
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    .line 500
    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$5;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$5;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 549
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    .line 663
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I

    .line 1200
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    .line 1201
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 1202
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 1203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handlerErr:Landroid/os/Handler;

    .line 2104
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->bm:Landroid/graphics/Bitmap;

    .line 173
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->common(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    .line 90
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    const-string p2, ""

    .line 91
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    const/16 p2, 0xf

    .line 93
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    const-string v1, ""

    .line 96
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    const-string v1, ""

    .line 97
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    const-string v1, ""

    .line 98
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    const-string v1, ""

    .line 99
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    const-string v1, ""

    .line 100
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    const-string v1, ""

    .line 101
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    const-string v1, ""

    .line 102
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    .line 104
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    const-string v1, ""

    .line 105
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    const-string v1, ""

    .line 106
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    .line 109
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mz/common/listener/AdVideoPlayerErrorListener;

    .line 110
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mz/common/listener/AdVideoPlayerListenerStart;

    .line 112
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    const/4 v2, -0x1

    .line 113
    iput v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 115
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 118
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 119
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    const-string v2, ""

    .line 121
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    .line 123
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    .line 125
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    .line 126
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    .line 127
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    .line 128
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 130
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    .line 131
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    .line 133
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    .line 134
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    .line 135
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    .line 136
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    .line 137
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    .line 138
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 139
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    .line 140
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    .line 142
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    .line 143
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    .line 144
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    .line 145
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    .line 146
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    .line 156
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    .line 161
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->logo:Landroid/widget/ImageView;

    .line 162
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->startIsMute:Z

    .line 195
    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$1;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdVideoPlayer$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->commonHandler:Landroid/os/Handler;

    .line 238
    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$2;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdVideoPlayer$2;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAdHandler:Landroid/os/Handler;

    .line 317
    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$3;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdVideoPlayer$3;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->moviesspConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 353
    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$4;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdVideoPlayer$4;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->movieConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 498
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    .line 500
    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$5;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdVideoPlayer$5;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 549
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    .line 663
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I

    .line 1200
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    .line 1201
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 1202
    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 1203
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->handlerErr:Landroid/os/Handler;

    .line 2104
    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->bm:Landroid/graphics/Bitmap;

    .line 178
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->common(Landroid/content/Context;)V

    return-void
.end method

.method private AdClickOption()V
    .locals 5

    .line 1998
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1999
    :goto_0
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 2000
    :cond_0
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2001
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mclicktracking count"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2005
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2007
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->playSoundEffect(I)V

    .line 2008
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$30;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$30;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2016
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2019
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private SendRequestVideoInfo()V
    .locals 4

    .line 268
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$8;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$8;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 283
    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$9;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$9;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 294
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer$10;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 314
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$10(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->commonHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$11(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$13(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$14(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAd()V

    return-void
.end method

.method static synthetic access$15(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/Nt;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    return-void
.end method

.method static synthetic access$16(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/Nt;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    return-object p0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/Nt$OnProgressbarListener;
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-object p0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/request/OnConnectionListener;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->movieConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    return-object p0
.end method

.method static synthetic access$19(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onReceiveRunningStart(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$22(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$23(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$24(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$26(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/request/OnConnectionListener;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->moviesspConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    return-object p0
.end method

.method static synthetic access$27(Lcom/mapps/android/view/AdVideoPlayer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->soundMuteDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$28(Lcom/mapps/android/view/AdVideoPlayer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->soundOnDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$29(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->createMuteButton()V

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestVideoInfo()V

    return-void
.end method

.method static synthetic access$30(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 676
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->imageLoad(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$31(Z)V
    .locals 0

    .line 163
    sput-boolean p0, Lcom/mapps/android/view/AdVideoPlayer;->isMute:Z

    return-void
.end method

.method static synthetic access$32(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/ToggleButton;
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$33()Z
    .locals 1

    .line 163
    sget-boolean v0, Lcom/mapps/android/view/AdVideoPlayer;->isMute:Z

    return v0
.end method

.method static synthetic access$34(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->soundMuteDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->soundOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$36(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 729
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->soundControl()V

    return-void
.end method

.method static synthetic access$37(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1004
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->adClick()V

    return-void
.end method

.method static synthetic access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    return p0
.end method

.method static synthetic access$39(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    return p0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    .line 160
    sput-object p0, Lcom/mapps/android/view/AdVideoPlayer;->CURRENTSSP:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$40(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1010
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->adCount()V

    return-void
.end method

.method static synthetic access$41(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 1200
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    return p0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->logo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$43(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    return p0
.end method

.method static synthetic access$44(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    return-void
.end method

.method static synthetic access$45(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .line 1562
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->sendVastApi(I)V

    return-void
.end method

.method static synthetic access$46(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    return p0
.end method

.method static synthetic access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$49(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    return-void
.end method

.method static synthetic access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$52(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 130
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    return p0
.end method

.method static synthetic access$53(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    return p0
.end method

.method static synthetic access$54(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    return p0
.end method

.method static synthetic access$55(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    return-void
.end method

.method static synthetic access$56(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 0

    .line 663
    iget p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I

    return p0
.end method

.method static synthetic access$57(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    return p0
.end method

.method static synthetic access$58(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    return-void
.end method

.method static synthetic access$59(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->requestView(Lcom/mz/common/network/data/DataNTMovie;)V

    return-void
.end method

.method static synthetic access$60(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$61(Lcom/mapps/android/view/AdVideoPlayer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2104
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->bm:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$62(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2104
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->bm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/data/DataNTMovie;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    return-object p0
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestUseSSp()V

    return-void
.end method

.method private adClick()V
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestBreakPoint()V

    .line 1006
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->AdClickOption()V

    const/4 v0, 0x3

    .line 1007
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    return-void
.end method

.method private adCount()V
    .locals 1

    .line 1011
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestBreakPoint()V

    .line 1012
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->skipArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->requestProgressApi(Ljava/util/ArrayList;)V

    const/4 v0, 0x2

    .line 1013
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 1014
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 1925
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1926
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 1933
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1934
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_2

    move p0, p2

    :cond_2
    :goto_1
    return p0
.end method

.method private checkBuffer()V
    .locals 4

    .line 893
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handlerErr:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$21;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$21;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private common(Landroid/content/Context;)V
    .locals 1

    .line 182
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    .line 183
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$6;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createADClickButton(Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 8

    .line 773
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 775
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    :cond_0
    const-string v0, "createADClickButton"

    .line 777
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 778
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 779
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 780
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 781
    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p2, 0x1

    .line 782
    invoke-virtual {p0, p2}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    iget v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    const/4 v5, 0x0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 783
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    .line 784
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "\uad11\uace0\uc815\ubcf4 \ub354\ubcf4\uae30"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 785
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v1

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v4, 0x4

    const/4 v6, 0x5

    const/16 v7, 0x21

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 786
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 788
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 789
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const-string v3, "#99000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 790
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    iget v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    invoke-virtual {p0, v3, p2}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 791
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 792
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    iget v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    invoke-virtual {p0, v3, p2}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 793
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const-string v2, "#f7f524"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 794
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 795
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 797
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 799
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$19;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$19;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createADCount(Landroid/widget/RelativeLayout;Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 5

    .line 816
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 817
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 818
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    :cond_0
    const-string p2, "createADCount"

    .line 820
    invoke-static {p2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 821
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 822
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 823
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x2

    .line 824
    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v2

    iput v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 825
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    .line 826
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 827
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 828
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const-string v2, "#99000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 830
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 831
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 832
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 833
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 834
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 835
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$20;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$20;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    invoke-virtual {p0, v1, v3}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v1

    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    invoke-virtual {p0, v2, v3}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v2

    iget v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 851
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createLogo(Landroid/widget/RelativeLayout;)V
    .locals 4

    .line 915
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 916
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 917
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    .line 918
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 919
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 920
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 921
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->logo:Landroid/widget/ImageView;

    .line 922
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->logo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    sget-object p1, Lcom/mz/common/ui/UILoad$ImageName;->d:Ljava/lang/String;

    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$22;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$22;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-direct {p0, p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->imageLoad(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private createMute(Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 986
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(I)Lcom/mz/common/network/data/DataMovieAD;

    move-result-object p1

    .line 989
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 990
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->k()Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    .line 991
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 992
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->startIsMute:Z

    .line 993
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->soundMute()V

    goto :goto_0

    .line 995
    :cond_0
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->startIsMute:Z

    goto :goto_0

    .line 998
    :cond_1
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->startIsMute:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private createMuteButton()V
    .locals 3

    .line 702
    new-instance v0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    .line 703
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 704
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 706
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 707
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    .line 708
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x2

    .line 709
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 710
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 711
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->soundMuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->startIsMute:Z

    sput-boolean v0, Lcom/mapps/android/view/AdVideoPlayer;->isMute:Z

    .line 713
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/mapps/android/view/AdVideoPlayer;->isMute:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 714
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->soundControl()V

    .line 715
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$17;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$17;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 726
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->toggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPreview(Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 741
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    .line 742
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getOnScreenTouchListener()Lcom/mz/common/listener/OnScreenTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$18;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$18;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    .line 752
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 754
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 758
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 759
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 760
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 761
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 762
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createProgress(Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 766
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    .line 767
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 768
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 769
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createRoot()V
    .locals 2

    .line 906
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    .line 907
    invoke-direct {p0, v0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->rootLayoutSetting(III)V

    .line 908
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->addView(Landroid/view/View;)V

    return-void
.end method

.method private doCleanUp()V
    .locals 2

    const/4 v0, 0x0

    .line 1191
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 1192
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 1193
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private getMeasuredSize(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1844
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1845
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 1847
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static getMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 10

    .line 1158
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "android.media.MediaTimeProvider"

    .line 1165
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.media.SubtitleController"

    .line 1166
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.media.SubtitleController$Anchor"

    .line 1167
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.media.SubtitleController$Listener"

    .line 1168
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    .line 1169
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v4, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1170
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    const/4 p0, 0x0

    aput-object p0, v5, v7

    aput-object p0, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mHandler"

    .line 1171
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1172
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1174
    :try_start_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    :try_start_2
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setSubtitleAnchor"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v2, v9, v8

    aput-object v3, v9, v7

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1181
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v8

    aput-object p0, v1, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1178
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1179
    throw p0

    .line 1178
    :catch_0
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    .line 1184
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getOrientations(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "window"

    .line 1866
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1867
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1868
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "1"

    return-object p0

    :pswitch_0
    const-string p0, "2"

    return-object p0

    :pswitch_1
    const-string p0, "1"

    return-object p0

    :pswitch_2
    const-string p0, "2"

    return-object p0

    :pswitch_3
    const-string p0, "1"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getm_nlimtSec(Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 857
    :try_start_0
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 859
    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(I)Lcom/mz/common/network/data/DataMovieAD;

    move-result-object v1

    .line 860
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataMovieAD;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataMovieAD;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataMovieAD;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    goto :goto_0

    .line 863
    :cond_0
    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    .line 865
    :goto_0
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v0, :cond_1

    .line 866
    new-instance p1, Landroid/text/SpannableStringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\uad11\uace0 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ucd08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 867
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 868
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 870
    invoke-virtual {v1}, Lcom/mz/common/network/data/DataMovieAD;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 871
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object p1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataMovieAD;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 877
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private imageLoad(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3

    .line 677
    new-instance v0, Lcom/mz/common/ui/UILoad;

    invoke-direct {v0}, Lcom/mz/common/ui/UILoad;-><init>()V

    .line 678
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mz/common/ui/UILoad$ImageBaseUrl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/mz/common/ui/UILoad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private onAdPlayerReceive(I)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdVideoPlayerListener;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onReceiveRunningStart(I)V
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mz/common/listener/AdVideoPlayerListenerStart;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mz/common/listener/AdVideoPlayerListenerStart;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdVideoPlayerListenerStart;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private phoneListener()V
    .locals 3

    .line 883
    :try_start_0
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    .line 884
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 885
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 888
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private progressSend(ZLcom/mz/common/network/data/DataNTMovie;)V
    .locals 9

    .line 1534
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 1536
    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(I)Lcom/mz/common/network/data/DataMovieAD;

    move-result-object p2

    .line 1537
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataMovieAD;->a()I

    move-result v1

    if-lez v1, :cond_3

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_2

    .line 1540
    :cond_0
    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataMovieAD;->a(I)Lcom/mz/common/network/data/DataTracking;

    move-result-object v2

    .line 1541
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->e()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1543
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1544
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "All checking send : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v2, v3}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    goto :goto_1

    :cond_1
    const-string v4, "progress"

    .line 1548
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1549
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v4

    .line 1550
    iget v6, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    long-to-int v7, v4

    if-ne v6, v7, :cond_2

    .line 1551
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " /offet :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v2, v3}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1147
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 1148
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private requestProgressApi(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataTracking;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1019
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 1022
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mz/common/network/data/DataTracking;

    .line 1023
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1024
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1025
    invoke-virtual {v2, v3}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private requestShowAd()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAdHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestUseSSp()V
    .locals 4

    .line 440
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$11;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$11;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 455
    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$12;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$12;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 466
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer$13;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 486
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requestView(Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 7

    .line 404
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v0

    const/16 v1, -0x2bc

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(I)Lcom/mz/common/network/data/DataMovieAD;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 410
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 411
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 412
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[ERRORCODE]"

    const/16 v5, 0x65

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "error : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 416
    :goto_1
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, ""

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const/16 v3, -0xbb8

    .line 417
    invoke-direct {p0, v3}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 418
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, ""

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 419
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ERRORCODE]"

    const/16 v5, 0x191

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "error : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 425
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    .line 426
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 428
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->initView(Lcom/mz/common/network/data/DataNTMovie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/16 p1, -0x320

    .line 430
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    goto :goto_2

    .line 434
    :cond_6
    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    :cond_7
    :goto_2
    return-void
.end method

.method private rootLayoutSetting(III)V
    .locals 1

    .line 667
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 668
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private sendVastApi(I)V
    .locals 2

    .line 1563
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1564
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->startArray:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->requestProgressApi(Ljava/util/ArrayList;)V

    .line 1566
    :cond_0
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne p1, v0, :cond_1

    .line 1567
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->firstArray:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->requestProgressApi(Ljava/util/ArrayList;)V

    .line 1570
    :cond_1
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne p1, v0, :cond_2

    .line 1571
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->midArray:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->requestProgressApi(Ljava/util/ArrayList;)V

    .line 1573
    :cond_2
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne p1, v0, :cond_3

    .line 1574
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->thirdArray:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->requestProgressApi(Ljava/util/ArrayList;)V

    .line 1576
    :cond_3
    sget-object p1, Lcom/mapps/android/view/AdVideoPlayer;->CURRENTSSP:Ljava/lang/String;

    const-string v0, "n"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    const-string p1, "sendVastApi : base"

    .line 1577
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1578
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, v1, p1}, Lcom/mapps/android/view/AdVideoPlayer;->progressSend(ZLcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    :cond_4
    const-string p1, "sendVastApi : ssp"

    .line 1580
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1581
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, v1, p1}, Lcom/mapps/android/view/AdVideoPlayer;->progressSend(ZLcom/mz/common/network/data/DataNTMovie;)V

    :goto_0
    return-void
.end method

.method private soundControl()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 731
    sget-boolean v0, Lcom/mapps/android/view/AdVideoPlayer;->isMute:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private soundMute()V
    .locals 2

    .line 682
    sget-object v0, Lcom/mz/common/ui/UILoad$ImageName;->b:Ljava/lang/String;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$16;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$16;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->imageLoad(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private startVideoPlayback(Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 5

    const-string v0, "startVideoPlayback method"

    .line 1212
    invoke-static {v0}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1216
    :cond_0
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->setVideoMode(I)V

    .line 1217
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1218
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v0

    .line 1219
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->getm_nlimtSec(Lcom/mz/common/network/data/DataNTMovie;)V

    const/4 v1, 0x0

    if-lez v0, :cond_9

    .line 1221
    invoke-virtual {p1, v1}, Lcom/mz/common/network/data/DataNTMovie;->a(I)Lcom/mz/common/network/data/DataMovieAD;

    move-result-object p1

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->startArray:Ljava/util/ArrayList;

    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->firstArray:Ljava/util/ArrayList;

    .line 1224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->midArray:Ljava/util/ArrayList;

    .line 1225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->thirdArray:Ljava/util/ArrayList;

    .line 1226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->completeArray:Ljava/util/ArrayList;

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->skipArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1228
    :goto_0
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->a()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1244
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1246
    :try_start_1
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1248
    :catch_0
    :try_start_2
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1251
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->g()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1253
    :catch_1
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/util/ArrayList;

    .line 1255
    :goto_2
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    .line 1256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->breakway:Ljava/util/ArrayList;

    .line 1257
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_1

    goto/16 :goto_5

    .line 1259
    :cond_1
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMovieAD;->j()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mz/common/network/data/DataTracking;

    .line 1260
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->breakway:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1229
    :cond_2
    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataMovieAD;->a(I)Lcom/mz/common/network/data/DataTracking;

    move-result-object v2

    const-string v3, "start"

    .line 1230
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1231
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->startArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const-string v3, "firstQuartile"

    .line 1232
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1233
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->firstArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const-string v3, "midpoint"

    .line 1234
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1235
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->midArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const-string v3, "thirdQuartile"

    .line 1236
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1237
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->thirdArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string v3, "complete"

    .line 1238
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1239
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->completeArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-string v3, "skip"

    .line 1240
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataTracking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1241
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->skipArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1263
    :cond_9
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mMediaPlayer.getDuration()  :  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1264
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    .line 1265
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    .line 1266
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    .line 1267
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    .line 1268
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    const/4 p1, 0x1

    .line 1269
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    .line 1270
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 1271
    :goto_6
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v1, p1, :cond_a

    goto :goto_7

    .line 1272
    :cond_a
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    const-string v0, ""

    .line 1273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Imps_api count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_2
    move-exception p1

    .line 1279
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0x320

    .line 1280
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 1281
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 1283
    :cond_c
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ddddddddddmisStart : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1284
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "m_nlimtSec : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1285
    iget p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    const-wide/16 v0, 0xc8

    if-lez p1, :cond_d

    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    if-eqz p1, :cond_d

    .line 1286
    new-instance p1, Lcom/mapps/android/view/AdVideoPlayer$24;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer$24;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 1344
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 1345
    :cond_d
    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    if-eqz p1, :cond_e

    .line 1347
    new-instance p1, Lcom/mapps/android/view/AdVideoPlayer$25;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer$25;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 1399
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_8
    return-void
.end method


# virtual methods
.method public SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 1884
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{m_sec}"

    .line 1887
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-lez v1, :cond_0

    .line 1889
    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1893
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendapi -> api type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / total time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 1894
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1895
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1896
    new-instance p2, Lcom/mz/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1, v0}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1897
    new-instance p1, Lcom/mapps/android/view/AdVideoPlayer$28;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer$28;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {p2, p1}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1915
    new-instance p1, Lcom/mz/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v2}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    .line 1916
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1917
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mz/common/network/Nt;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object p2, v0, v2

    invoke-virtual {p1, v0}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const-string p1, "sendapi is null"

    .line 1919
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public arrangeVideo()V
    .locals 6

    const-string v0, "arrangeVideo"

    .line 1611
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 1615
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 1616
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getWidth()I

    move-result v2

    .line 1617
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getHeight()I

    move-result v3

    .line 1621
    iget v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    if-le v0, v2, :cond_0

    if-le v1, v3, :cond_0

    mul-int/lit8 v0, v2, 0x3

    .line 1639
    div-int/lit8 v1, v0, 0x4

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :pswitch_1
    move v1, v3

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v2, 0x9

    .line 1630
    div-int/lit8 v1, v0, 0x10

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, v2, 0x3

    .line 1625
    div-int/lit8 v1, v0, 0x4

    .line 1647
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1651
    :cond_1
    sget-object v0, Lcom/mapps/android/view/AdVideoPlayer;->CURRENTSSP:Ljava/lang/String;

    const-string v1, "n"

    if-ne v0, v1, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->createADCount(Landroid/widget/RelativeLayout;Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_1

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->createADCount(Landroid/widget/RelativeLayout;Lcom/mz/common/network/data/DataNTMovie;)V

    .line 1659
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1660
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->createADClickButton(Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1665
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 4

    .line 630
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->releaseMediaPlayer()V

    .line 631
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->doCleanUp()V

    const/4 v0, 0x0

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 638
    :cond_0
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 639
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 641
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 642
    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    .line 643
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finalizeimage()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getA_media()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method public getA_publisher()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getA_section()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePx()I
    .locals 4

    .line 1823
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1827
    invoke-direct {p0, p0}, Lcom/mapps/android/view/AdVideoPlayer;->getMeasuredSize(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1828
    invoke-direct {p0, p0}, Lcom/mapps/android/view/AdVideoPlayer;->getMeasuredSize(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1832
    :goto_0
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    .line 1833
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "displayWith : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return v1

    .line 1837
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "displayHeight : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method public getGapDensty()I
    .locals 3

    .line 1686
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x140

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1e0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    :goto_0
    return v2
.end method

.method public getGapDensty(I)I
    .locals 4

    .line 1717
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getDevicePx()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    if-ne p1, v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x320

    if-le v0, v3, :cond_3

    if-ne p1, v1, :cond_2

    const/16 v2, 0xf

    goto :goto_1

    :cond_2
    const/16 v2, 0x18

    :cond_3
    :goto_1
    const/16 v3, 0x2d0

    if-le v0, v3, :cond_5

    if-ne p1, v1, :cond_4

    const/16 v2, 0x14

    goto :goto_2

    :cond_4
    const/16 v2, 0x20

    :cond_5
    :goto_2
    const/16 v3, 0x438

    if-le v0, v3, :cond_7

    if-ne p1, v1, :cond_6

    const/16 v2, 0x1e

    goto :goto_3

    :cond_6
    const/16 v2, 0x30

    :cond_7
    :goto_3
    const/16 v3, 0x5a0

    if-le v0, v3, :cond_9

    if-ne p1, v1, :cond_8

    const/16 p1, 0x2d

    const/16 v2, 0x2d

    goto :goto_4

    :cond_8
    const/16 p1, 0x48

    const/16 v2, 0x48

    :cond_9
    :goto_4
    return v2
.end method

.method public getImgSize(IZ)I
    .locals 3

    .line 1771
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getDevicePx()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x2c

    if-eqz p2, :cond_0

    .line 1774
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_2

    const/16 v1, 0x74

    goto :goto_0

    .line 1776
    :cond_0
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_2

    const/16 v1, 0xd8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/16 v2, 0x320

    if-le v0, v2, :cond_4

    const/16 v1, 0x34

    if-eqz p2, :cond_3

    .line 1780
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_4

    const/16 v1, 0xaf

    goto :goto_1

    .line 1782
    :cond_3
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_4

    const/16 v1, 0x13a

    :cond_4
    :goto_1
    const/16 v2, 0x2d0

    if-le v0, v2, :cond_6

    const/16 v1, 0x4c

    if-eqz p2, :cond_5

    .line 1787
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_6

    const/16 v1, 0xfc

    goto :goto_2

    .line 1789
    :cond_5
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_6

    const/16 v1, 0x1e6

    :cond_6
    :goto_2
    const/16 v2, 0x438

    if-le v0, v2, :cond_8

    const/16 v1, 0x66

    if-eqz p2, :cond_7

    .line 1793
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_8

    const/16 v1, 0x150

    goto :goto_3

    .line 1795
    :cond_7
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_8

    const/16 v1, 0x25e

    :cond_8
    :goto_3
    const/16 v2, 0x5a0

    if-le v0, v2, :cond_b

    const/16 v0, 0x8e

    if-eqz p2, :cond_a

    .line 1799
    iget p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, p2, :cond_9

    const/16 p1, 0x1be

    const/16 v1, 0x1be

    goto :goto_4

    :cond_9
    const/16 v1, 0x8e

    goto :goto_4

    .line 1801
    :cond_a
    iget p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, p2, :cond_9

    const/16 p1, 0x376

    const/16 v1, 0x376

    :cond_b
    :goto_4
    return v1
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getOnScreenTouchListener()Lcom/mz/common/listener/OnScreenTouchListener;
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->onScreenTouchListener:Lcom/mz/common/listener/OnScreenTouchListener;

    return-object v0
.end method

.method public getPlayerSecond()I
    .locals 1

    .line 2026
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 2028
    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    return v0

    .line 2033
    :cond_1
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    return v0
.end method

.method public getTextPx(I)I
    .locals 4

    .line 1808
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getDevicePx()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    if-ne p1, v1, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x320

    if-le v0, v3, :cond_3

    if-ne p1, v1, :cond_2

    const/16 v2, 0x12

    goto :goto_1

    :cond_2
    const/16 v2, 0x15

    :cond_3
    :goto_1
    const/16 v3, 0x2d0

    if-le v0, v3, :cond_5

    if-ne p1, v1, :cond_4

    const/16 v2, 0x1b

    goto :goto_2

    :cond_4
    const/16 v2, 0x20

    :cond_5
    :goto_2
    const/16 v3, 0x438

    if-le v0, v3, :cond_7

    if-ne p1, v1, :cond_6

    const/16 v2, 0x28

    goto :goto_3

    :cond_6
    const/16 v2, 0x2f

    :cond_7
    :goto_3
    const/16 v3, 0x5a0

    if-le v0, v3, :cond_9

    if-ne p1, v1, :cond_8

    const/16 p1, 0x36

    const/16 v2, 0x36

    goto :goto_4

    :cond_8
    const/16 p1, 0x3f

    const/16 v2, 0x3f

    :cond_9
    :goto_4
    return v2
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 1

    .line 558
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 3

    .line 526
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&s_key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->videoBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCurrentDuration()I
    .locals 2

    const/4 v0, -0x1

    .line 2069
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 2074
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public initView(Lcom/mz/common/network/data/DataNTMovie;)V
    .locals 2

    const/4 v0, -0x1

    .line 960
    :try_start_0
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->createRoot()V

    .line 961
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->createPreview(Landroid/widget/RelativeLayout;)V

    .line 962
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->createProgress(Landroid/widget/RelativeLayout;)V

    .line 963
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->phoneListener()V

    if-nez p1, :cond_0

    .line 965
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 966
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->createLogo(Landroid/widget/RelativeLayout;)V

    .line 973
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->createMute(Lcom/mz/common/network/data/DataNTMovie;)V

    .line 974
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->checkBuffer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 977
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 978
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 979
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    :goto_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1977
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1978
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1140
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 p1, 0x1

    .line 1115
    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 1117
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->completeArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->requestProgressApi(Ljava/util/ArrayList;)V

    .line 1118
    sget-object v0, Lcom/mapps/android/view/AdVideoPlayer;->CURRENTSSP:Ljava/lang/String;

    const-string v1, "n"

    if-ne v0, v1, :cond_0

    const-string v0, "onCompletion : base"

    .line 1119
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->progressSend(ZLcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    :cond_0
    const-string v0, "onCompletion : ssp"

    .line 1122
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->progressSend(ZLcom/mz/common/network/data/DataNTMovie;)V

    .line 1125
    :goto_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 1126
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1983
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 1985
    new-instance p1, Lcom/mapps/android/view/AdVideoPlayer$29;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer$29;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 1992
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1971
    invoke-static {}, Lcom/mz/common/TraceGPS;->a()V

    .line 1972
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-string v0, "onDetachedFromWindow"

    .line 491
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestBreakPoint()V

    .line 493
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalize()V

    .line 494
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalizeimage()V

    .line 495
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const-string v0, "onError"

    .line 1130
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestBreakPoint()V

    .line 1132
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mz/common/listener/AdVideoPlayerErrorListener;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mz/common/listener/AdVideoPlayerErrorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mz/common/listener/AdVideoPlayerErrorListener;->a(Landroid/media/MediaPlayer;II)V

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1965
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x1

    .line 1100
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 1101
    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz p1, :cond_1

    .line 1102
    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    if-nez p1, :cond_1

    .line 1103
    sget-object p1, Lcom/mapps/android/view/AdVideoPlayer;->CURRENTSSP:Ljava/lang/String;

    const-string v0, "n"

    if-ne p1, v0, :cond_0

    const-string p1, "onPrepared : base"

    .line 1104
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1105
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback(Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    :cond_0
    const-string p1, "onPrepared : ssp"

    .line 1107
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1108
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback(Lcom/mz/common/network/data/DataNTMovie;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    .line 1958
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1959
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    .line 1960
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1048
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 1049
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 1050
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    new-instance p2, Lcom/mapps/android/view/AdVideoPlayer$23;

    invoke-direct {p2, p0}, Lcom/mapps/android/view/AdVideoPlayer$23;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 1084
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 1085
    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz p1, :cond_2

    .line 1086
    iget-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    if-nez p1, :cond_2

    .line 1087
    sget-object p1, Lcom/mapps/android/view/AdVideoPlayer;->CURRENTSSP:Ljava/lang/String;

    const-string p2, "n"

    if-ne p1, p2, :cond_1

    const-string p1, "onVideoSizeChanged : base"

    .line 1088
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback(Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    :cond_1
    const-string p1, "onVideoSizeChanged : ssp"

    .line 1091
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1092
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->dataSspMovie:Lcom/mz/common/network/data/DataNTMovie;

    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback(Lcom/mz/common/network/data/DataNTMovie;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasWindowFocus : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1862
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "visible : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1856
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowSystemUiVisibilityChanged(I)V

    return-void
.end method

.method public playVideo()V
    .locals 2

    .line 1586
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1587
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->doCleanUp()V

    .line 1589
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->getMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1594
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1595
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1596
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1597
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1598
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1599
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1600
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1601
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, -0x320

    .line 1603
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    .line 1604
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestBreakPoint()V
    .locals 6

    const-string v0, "requestBreakPoint"

    .line 1405
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1406
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_2

    .line 1409
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->breakway:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->breakway:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->breakway:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    .line 1412
    :cond_0
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->breakway:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mz/common/network/data/DataTracking;

    .line 1413
    invoke-virtual {v3}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v3}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1414
    invoke-virtual {v3}, Lcom/mz/common/network/data/DataTracking;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1415
    invoke-virtual {v3}, Lcom/mz/common/network/data/DataTracking;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Breakpoint"

    invoke-virtual {p0, v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v3, v1}, Lcom/mz/common/network/data/DataTracking;->b(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public requestSoundMuteImageLoader(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2109
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->bm:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 2110
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/mapps/android/view/AdVideoPlayer$31;

    invoke-direct {p2, p0, p3}, Lcom/mapps/android/view/AdVideoPlayer$31;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2124
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public selfDestoryPlayer()V
    .locals 1

    .line 1948
    :try_start_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1949
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1952
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1954
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->setfinish()V

    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    return-void
.end method

.method public setAdVideoPlayerErrorListner(Lcom/mz/common/listener/AdVideoPlayerErrorListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 655
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mz/common/listener/AdVideoPlayerErrorListener;

    :cond_0
    return-void
.end method

.method public setAdVideoPlayerListner(Lcom/mz/common/listener/AdVideoPlayerListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 649
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    :cond_0
    return-void
.end method

.method public setAdVideoPlayerStartListner(Lcom/mz/common/listener/AdVideoPlayerListenerStart;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mz/common/listener/AdVideoPlayerListenerStart;

    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    .line 554
    iput-object p3, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    return-void
.end method

.method public setCateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    .line 534
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    return-void
.end method

.method public setLoaction(Z)V
    .locals 2

    .line 602
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$14;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdVideoPlayer$14;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setOnScreenTouchListener(Lcom/mz/common/listener/OnScreenTouchListener;)V
    .locals 0

    .line 2089
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->onScreenTouchListener:Lcom/mz/common/listener/OnScreenTouchListener;

    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 2

    .line 613
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$15;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdVideoPlayer$15;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 620
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setPause()V
    .locals 2

    .line 2045
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2047
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setRestart()V
    .locals 4

    .line 2056
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2058
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2061
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public setVcode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 598
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setVideoBackgroundColor(I)V
    .locals 0

    .line 2101
    invoke-static {p1}, Lcom/mz/common/MZUtils;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->videoBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setVideoBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 2097
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->videoBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setVideoMode(I)V
    .locals 1

    .line 1671
    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    .line 1672
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 1673
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$27;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$27;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setfinish()V
    .locals 0

    .line 624
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalize()V

    .line 625
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalizeimage()V

    return-void
.end method

.method public setloction(Ljava/lang/String;I)V
    .locals 2

    .line 1427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/AdVideoPlayer$26;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAd()V
    .locals 4

    .line 204
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalize()V

    .line 205
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/share/ShareUtil;->version()V

    .line 206
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$7;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    .line 230
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)Z

    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1067
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->playVideo()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
