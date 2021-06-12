.class public final Lcom/samsung/android/app/music/player/RepeatController;
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
        Lcom/samsung/android/app/music/player/RepeatController$OnRepeatChangedListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private final e:Lcom/airbnb/lottie/LottieAnimationView;

.field private final f:Z

.field private final g:Z

.field private final h:Landroid/support/constraint/ConstraintLayout;

.field private final i:Landroid/view/View;

.field private final j:I

.field private k:I

.field private l:Z

.field private m:Lcom/samsung/android/app/music/player/RepeatController$OnRepeatChangedListener;

.field private n:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

.field private o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private p:Z

.field private q:Lcom/airbnb/lottie/LottieComposition;

.field private r:Lcom/airbnb/lottie/LottieComposition;

.field private s:Lcom/airbnb/lottie/LottieComposition;

.field private t:I

.field private u:Z

.field private final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;ZZ)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->k:I

    .line 103
    iput v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->t:I

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->u:Z

    .line 108
    new-instance v0, Lcom/samsung/android/app/music/player/RepeatController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/RepeatController$1;-><init>(Lcom/samsung/android/app/music/player/RepeatController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->v:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    const p1, 0x7f13028f

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/RepeatController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/RepeatController$2;-><init>(Lcom/samsung/android/app/music/player/RepeatController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/RepeatController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/RepeatController$3;-><init>(Lcom/samsung/android/app/music/player/RepeatController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const p1, 0x7f1302b5

    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->d:Landroid/widget/ImageView;

    const p1, 0x7f1302c4

    .line 184
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/RepeatController;->b()V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/RepeatController;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 189
    iput-boolean p3, p0, Lcom/samsung/android/app/music/player/RepeatController;->f:Z

    .line 190
    iput-boolean p4, p0, Lcom/samsung/android/app/music/player/RepeatController;->g:Z

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1001a3

    .line 192
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->j:I

    const p1, 0x7f130284

    .line 193
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->h:Landroid/support/constraint/ConstraintLayout;

    const p1, 0x7f1302aa

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->i:Landroid/view/View;

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/RepeatController;->c()V

    .line 199
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    .line 201
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    :cond_2
    return-void
.end method

.method private a(IZ)I
    .locals 3

    const v0, 0x7f020142

    const v1, 0x7f020143

    const v2, 0x7f020141

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_2

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_1

    :cond_0
    const v0, 0x7f020141

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f020143

    :cond_2
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/support/constraint/ConstraintLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/RepeatController;->h:Landroid/support/constraint/ConstraintLayout;

    return-object p0
.end method

.method private a(I)V
    .locals 6

    .line 213
    iget v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "RepeatController"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode is changed old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/player/RepeatController;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->k:I

    .line 218
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 219
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->c(I)I

    move-result v2

    .line 221
    iget-object v3, p0, Lcom/samsung/android/app/music/player/RepeatController;->d:Landroid/widget/ImageView;

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/RepeatController;->a(IZ)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 224
    iget-object v5, p0, Lcom/samsung/android/app/music/player/RepeatController;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_2

    .line 226
    iget-object v3, p0, Lcom/samsung/android/app/music/player/RepeatController;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 230
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v3, :cond_4

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->b(I)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 233
    iget-object v5, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 234
    iget-object v3, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    goto :goto_1

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_4
    :goto_1
    if-eq v2, v4, :cond_5

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    const v5, 0x7f0b0408

    invoke-static {v0, v3, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;II)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->b(Landroid/view/View;)V

    .line 250
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->l:Z

    if-eqz v0, :cond_9

    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->f:Z

    if-eqz v0, :cond_6

    if-eq v2, v4, :cond_6

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->n:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->n:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;->b(I)V

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->m:Lcom/samsung/android/app/music/player/RepeatController$OnRepeatChangedListener;

    if-eqz v0, :cond_8

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->m:Lcom/samsung/android/app/music/player/RepeatController$OnRepeatChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/RepeatController$OnRepeatChangedListener;->a(I)V

    .line 261
    :cond_8
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->l:Z

    :cond_9
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 207
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
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

    .line 428
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 430
    iget v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_2

    .line 431
    iget v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->t:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->t:I

    .line 434
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->a(ILandroid/os/Bundle;)Z

    move-result p1

    .line 435
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->u:Z

    if-eq v1, p1, :cond_3

    .line 437
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->u:Z

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 440
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/RepeatController;->d(I)V

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

    .line 464
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 465
    iget-object p2, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/RepeatController;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(I)Lcom/airbnb/lottie/LottieComposition;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->r:Lcom/airbnb/lottie/LottieComposition;

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->q:Lcom/airbnb/lottie/LottieComposition;

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->s:Lcom/airbnb/lottie/LottieComposition;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    const-string v1, "music_player_ic_repeat_once_to_none.json"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->s:Lcom/airbnb/lottie/LottieComposition;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    const-string v1, "music_player_ic_repeat_all_to_once.json"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->q:Lcom/airbnb/lottie/LottieComposition;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    const-string v1, "music_player_ic_repeat_none_to_all.json"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->r:Lcom/airbnb/lottie/LottieComposition;

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 449
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 450
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/RepeatController;->d()I

    move-result v1

    if-eq v1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 453
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "extra.repeat_state"

    .line 457
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 458
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->a(I)V

    return-void
.end method

.method private c(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0b03e2

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0b0400

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0b0409

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/RepeatController;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/music/player/RepeatController;->j:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 412
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 415
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    .line 416
    iget p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->t:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->d(I)V

    return-void
.end method

.method private d()I
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 506
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/RepeatController;->i:Landroid/view/View;

    return-object p0
.end method

.method private d(I)V
    .locals 4

    .line 345
    iget v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->t:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 353
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->u:Z

    const v2, 0x3ebd70a4    # 0.37f

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 358
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    if-eqz p1, :cond_3

    .line 359
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 364
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const-string p1, "RepeatController"

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled isFixedPlayRoutineList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isStreamingUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/player/RepeatController;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/RepeatController;->d()I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/player/RepeatController;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/RepeatController;->p:Z

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/player/RepeatController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/RepeatController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/RepeatController;->c()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/RepeatController;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/RepeatController;->b(Landroid/os/Bundle;)V

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

    .line 389
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/RepeatController;->a(Landroid/os/Bundle;)V

    .line 390
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/RepeatController;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 421
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    :cond_0
    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
