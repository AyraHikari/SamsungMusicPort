.class final Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/HeartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParticleLauncher"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    .line 84
    :cond_0
    rem-int/lit8 v1, v0, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_1

    float-to-double v1, v2

    .line 85
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double v1, v1, v3

    goto :goto_1

    :cond_1
    float-to-double v1, v2

    .line 87
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double v3, v3, v1

    add-double/2addr v1, v3

    :goto_1
    double-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v1

    const v3, 0x3dcccccd    # 0.1f

    add-float v11, v2, v3

    const v2, 0x3ecccccc    # 0.39999998f

    mul-float v2, v2, v1

    const v3, 0x3f19999a    # 0.6f

    add-float v12, v2, v3

    .line 92
    rem-int/lit8 v2, v0, 0x3

    const/16 v3, -0x21

    packed-switch v2, :pswitch_data_0

    .line 95
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/16 v2, -0x6a

    int-to-double v6, v3

    mul-double v4, v4, v6

    int-to-double v2, v2

    add-double/2addr v4, v2

    goto :goto_2

    .line 94
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/16 v2, -0x49

    int-to-double v6, v3

    mul-double v4, v4, v6

    int-to-double v2, v2

    add-double/2addr v4, v2

    goto :goto_2

    .line 93
    :pswitch_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v2, v3

    mul-double v4, v4, v2

    const/16 v2, -0x28

    int-to-double v2, v2

    add-double/2addr v4, v2

    :goto_2
    double-to-float v13, v4

    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(F)I

    move-result v3

    int-to-float v3, v3

    add-float v8, v2, v3

    const-wide/16 v2, 0x4b0

    long-to-float v2, v2

    mul-float v2, v2, v1

    float-to-long v1, v2

    const-wide/16 v3, 0x320

    add-long v9, v1, v3

    .line 102
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v2, "context"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->getHeight()I

    move-result v2

    int-to-float v7, v2

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;-><init>(Landroid/content/Context;FFFJFFF)V

    .line 104
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->b()V

    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->c(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;

    move-result-object v2

    check-cast v2, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v1, 0x32

    .line 109
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
