.class public final Lcom/samsung/android/app/music/player/ShuffleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/ShuffleController$OnShuffleChangedListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private final e:Lcom/airbnb/lottie/LottieAnimationView;

.field private final f:Z

.field private final g:Landroid/support/constraint/ConstraintLayout;

.field private final h:Landroid/view/View;

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Lcom/samsung/android/app/music/player/ShuffleController$OnShuffleChangedListener;

.field private m:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

.field private n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private o:Z

.field private p:Lcom/airbnb/lottie/LottieComposition;

.field private q:Lcom/airbnb/lottie/LottieComposition;

.field private r:I

.field private s:Z

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Z)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->j:I

    .line 98
    iput v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->r:I

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->s:Z

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/player/ShuffleController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ShuffleController$1;-><init>(Lcom/samsung/android/app/music/player/ShuffleController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->t:Ljava/lang/Runnable;

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    const p1, 0x7f13028b

    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/ShuffleController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ShuffleController$2;-><init>(Lcom/samsung/android/app/music/player/ShuffleController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/ShuffleController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ShuffleController$3;-><init>(Lcom/samsung/android/app/music/player/ShuffleController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001a3

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->i:I

    const p1, 0x7f130284

    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->g:Landroid/support/constraint/ConstraintLayout;

    const p1, 0x7f1302a7

    .line 178
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->h:Landroid/view/View;

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ShuffleController;->b()V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/ShuffleController;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 184
    iput-boolean p3, p0, Lcom/samsung/android/app/music/player/ShuffleController;->f:Z

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    const p2, 0x7f1302b4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->d:Landroid/widget/ImageView;

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    const p2, 0x7f1302c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    const-string p2, "music_player_ic_shuffle_off.json"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->p:Lcom/airbnb/lottie/LottieComposition;

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    const-string p2, "music_player_ic_shuffle_on.json"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->q:Lcom/airbnb/lottie/LottieComposition;

    .line 193
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    .line 195
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/support/constraint/ConstraintLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->g:Landroid/support/constraint/ConstraintLayout;

    return-object p0
.end method

.method private a(I)V
    .locals 5

    .line 207
    iget v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ShuffleController"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode is changed old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iput p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->j:I

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->b(I)V

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    const v4, 0x7f0b040d

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;II)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->b(Landroid/view/View;)V

    .line 223
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->k:Z

    if-eqz v2, :cond_5

    .line 224
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eq v0, v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->m:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->m:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;->a(I)V

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->l:Lcom/samsung/android/app/music/player/ShuffleController$OnShuffleChangedListener;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->l:Lcom/samsung/android/app/music/player/ShuffleController$OnShuffleChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/ShuffleController$OnShuffleChangedListener;->a(I)V

    .line 234
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/app/music/player/ShuffleController;->k:Z

    :cond_5
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 201
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 365
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 367
    iget v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_2

    .line 368
    iget v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->r:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->r:I

    .line 371
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->a(ILandroid/os/Bundle;)Z

    move-result p1

    .line 372
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->s:Z

    if-eq v1, p1, :cond_3

    .line 374
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->s:Z

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 377
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/ShuffleController;->d(I)V

    :cond_4
    return-void
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ID"

    .line 409
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/ShuffleController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 245
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->d:Landroid/widget/ImageView;

    const v0, 0x7f020319

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->d:Landroid/widget/ImageView;

    const v0, 0x7f02031a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 256
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->q:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    goto :goto_1

    .line 253
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->p:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 259
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 394
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ShuffleController;->c()I

    move-result v1

    if-eq v1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 398
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "extra.shuffle_state"

    .line 402
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 403
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->a(I)V

    return-void
.end method

.method private c()I
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 443
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0b02d4

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0b040e

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/ShuffleController;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->i:I

    return p0
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 349
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 352
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    .line 353
    iget p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->r:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->h:Landroid/view/View;

    return-object p0
.end method

.method private d(I)V
    .locals 4

    .line 283
    iget v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->r:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 291
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->s:Z

    const v2, 0x3ebd70a4    # 0.37f

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 292
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 296
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    if-eqz p1, :cond_3

    .line 297
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 302
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const-string p1, "ShuffleController"

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled isFixedPlayRoutineList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isStreamingUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/player/ShuffleController;)I
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ShuffleController;->c()I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/player/ShuffleController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->o:Z

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/player/ShuffleController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ShuffleController;->b()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/ShuffleController;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/ShuffleController;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/ShuffleController;->a(Landroid/os/Bundle;)V

    .line 327
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/ShuffleController;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 358
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    :cond_0
    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController;->n:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
