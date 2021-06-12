.class public Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;,
        Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MilkDialogReceiver"

.field private static final e:Landroid/content/UriMatcher;


# instance fields
.field b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/support/v4/app/FragmentActivity;

.field private d:Landroid/support/v4/app/FragmentManager;

.field private f:Z

.field private g:J

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "login-failed"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ACCOUNT_LOGIN_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "online-playlist-sync"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ONLINE_PLAYLIST_SYNC:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "explicit-invalid/*"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->EXPLICIT_INVALID:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "show-upsell"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->SHOW_UPSELL:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "drm-expired"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_EXPIRED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "drm_not_auto_time"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_NOT_AUTO_TIME:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "network_transport_init_failed"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->NETWORK_TRANSPORT_INIT_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "downloading_device_overflow"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DOWNLOAD_DEVICE_OVERFLOW:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "drm_license_acquire_again"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_LICENSE_ACQUIRE_AGAIN:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "legal_information"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->LEGAL_INFORMATION:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f:Z

    .line 283
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->b:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->h:Ljava/util/ArrayList;

    .line 92
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
    .locals 10

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->a()Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$8;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->a()Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f0b00cd

    const v2, 0x7f0b01be

    const v3, 0x80002

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 259
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1, v6}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Landroid/app/Activity;Z)V

    goto/16 :goto_1

    .line 256
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b0114

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 215
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->f(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x7f0b01da

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    const-string v3, "DOWNLOAD_DEVICE_OVERFLOW_TAG"

    .line 217
    invoke-virtual {p1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/DialogFragment;

    .line 219
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v6

    if-nez p1, :cond_0

    .line 220
    iget-wide v8, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_0

    .line 221
    iput-wide v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    .line 222
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0474

    .line 223
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$6;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 225
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$5;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 236
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "DOWNLOAD_DEVICE_OVERFLOW_TAG"

    .line 244
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 247
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    const-string v0, "Device overflow dialog is showing"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    goto/16 :goto_1

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 211
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b047e

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 177
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    const-string v0, "DRM_AUTO_TIME_DIALOG_FRAGMENT_TAG"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/DialogFragment;

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v6

    if-nez p1, :cond_2

    .line 180
    iget-wide v8, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_2

    .line 181
    iput-wide v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    .line 182
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b00cb

    .line 183
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b0116

    .line 184
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 185
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 195
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "DRM_AUTO_TIME_DIALOG_FRAGMENT_TAG"

    .line 203
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 204
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 206
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    const-string v0, "Not auto time dialog is showing"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    goto/16 :goto_1

    .line 137
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    if-nez p1, :cond_3

    .line 140
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    const-string v0, "user info is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 143
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    const-string v0, "user already has drm product user"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    const-string v0, "DRM_EXPIRED_DIALOG_FRAGMENT_TAG"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/DialogFragment;

    .line 149
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    if-nez p1, :cond_5

    .line 150
    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 151
    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    .line 152
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "932"

    .line 153
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b0119

    .line 154
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b02d3

    const-string v1, "9336"

    new-instance v2, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$2;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 155
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$1;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "DRM_EXPIRED_DIALOG_FRAGMENT_TAG"

    .line 169
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 170
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 172
    :cond_5
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    const-string v0, "DrmExpired dialog is showing"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-wide v4, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->g:J

    goto :goto_1

    .line 128
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const/16 p1, 0x2af8

    goto :goto_0

    :cond_6
    const/16 p1, 0x2ee0

    :goto_0
    const/4 v0, 0x0

    .line 133
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;I)V

    goto :goto_1

    .line 120
    :pswitch_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    .line 122
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "explicit_popup"

    .line 123
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;I)V

    goto :goto_1

    .line 113
    :pswitch_8
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b048b

    .line 114
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b048a

    .line 115
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d:Landroid/support/v4/app/FragmentManager;

    const-string v1, "playlistSync"

    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    :pswitch_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method static synthetic a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e()Landroid/content/UriMatcher;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f:Z

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f()V

    return-void
.end method

.method public c()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->b:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public d()Landroid/content/IntentFilter;
    .locals 2

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ATTACH_DATA"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "UI_UPDATE"

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "milk"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->f()V

    :cond_0
    return-void
.end method
