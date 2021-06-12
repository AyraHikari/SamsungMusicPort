.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "VideoView"


# instance fields
.field protected a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/net/Uri;

.field protected d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

.field protected e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

.field protected f:Landroid/media/AudioManager;

.field protected g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected h:J

.field protected i:J

.field protected j:Z

.field protected k:Z

.field protected l:Lcom/devbrackets/android/exomedia/util/StopWatch;

.field protected m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

.field protected n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected o:Z

.field protected p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 89
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->i:J

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->j:Z

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->k:Z

    .line 97
    new-instance v1, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 99
    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    .line 102
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->o:Z

    .line 103
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 89
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->i:J

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->j:Z

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->k:Z

    .line 97
    new-instance v1, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 99
    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    .line 102
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->o:Z

    .line 103
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance p3, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {p3}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 89
    new-instance p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {p3, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->i:J

    const/4 p3, 0x0

    .line 95
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->j:Z

    const/4 p3, 0x1

    .line 96
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->k:Z

    .line 97
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 99
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    .line 102
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->o:Z

    .line 103
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    new-instance p3, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {p3}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 89
    new-instance p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {p3, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 p3, 0x0

    .line 92
    iput-wide p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    const-wide/16 p3, -0x1

    .line 93
    iput-wide p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->i:J

    const/4 p3, 0x0

    .line 95
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->j:Z

    const/4 p3, 0x1

    .line 96
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->k:Z

    .line 97
    new-instance p4, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {p4}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object p4, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 99
    new-instance p4, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p4, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p4, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    .line 102
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->o:Z

    .line 103
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->b(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f()V

    .line 168
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->a()V

    .line 170
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->e()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->e(Z)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->a(J)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 809
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f:Landroid/media/AudioManager;

    .line 815
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 816
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V

    .line 817
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V
    .locals 0
    .param p2    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 829
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V

    .line 831
    sget p1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_video_preview_image:I

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    .line 832
    sget p1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_video_view:I

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    .line 834
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    .line 835
    new-instance p1, Lcom/devbrackets/android/exomedia/core/ListenerMux;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p1, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 837
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-interface {p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method protected a(Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V
    .locals 2
    .param p1    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 847
    iget-boolean v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->a:Z

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 851
    :cond_1
    iget-object v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->e:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->e:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V

    .line 855
    :cond_2
    iget-object v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 856
    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->f:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setMeasureBasedOnAspectRatioEnabled(Z)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 447
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b()Z

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->c()V

    const/4 p1, 0x0

    .line 451
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 453
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->b(Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->b()V

    .line 257
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->d(Z)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 868
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_video_view_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 869
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->video_view_api_impl_stub:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 871
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 872
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method protected b(Z)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b()Z

    .line 917
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->a(Z)V

    const/4 p1, 0x0

    .line 918
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 920
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->b(Z)V

    :cond_0
    return-void
.end method

.method protected c(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->a(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 896
    iget p1, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->d:I

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->c:I

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->a()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->b()V

    const/4 v0, 0x1

    .line 424
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 426
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->b(Z)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 462
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b(Z)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->e(Z)V

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 532
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->j:Z

    if-eqz v0, :cond_0

    .line 533
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/util/StopWatch;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 536
    :cond_0
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 506
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 507
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->i:J

    return-wide v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public getPreviewImageView()Landroid/widget/ImageView;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getVideoControls()Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    instance-of v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    check-cast v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoControlsCore()Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getVolume()F

    move-result v0

    return v0
.end method

.method public getWindowInfo()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getWindowInfo()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 131
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->o:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a()V

    :cond_0
    return-void
.end method

.method public setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;)V

    return-void
.end method

.method public setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 235
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eq v0, p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->b(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    .line 240
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->a(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    .line 245
    :cond_1
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 347
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setHandleAudioFocus(Z)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b()Z

    .line 379
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    return-void
.end method

.method public setId3MetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 769
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V

    return-void
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setMeasureBasedOnAspectRatioEnabled(Z)V

    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 742
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 733
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 760
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 724
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 751
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->n:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOnVideoSizedChangedListener(Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 778
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->m:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    iput-object p1, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->a:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;

    return-void
.end method

.method public setOverridePositionMatchesPlaybackSpeed(Z)V
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->k:Z

    if-eq p1, v0, :cond_1

    .line 581
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->k:Z

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getPlaybackSpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->a(F)V

    goto :goto_0

    .line 586
    :cond_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->l:Lcom/devbrackets/android/exomedia/util/StopWatch;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPositionOffset(J)V
    .locals 0

    .line 546
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h:J

    return-void
.end method

.method public setPreviewImage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 179
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 212
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setReleaseOnDetachFromWindow(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->o:Z

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setRepeatMode(I)V

    return-void
.end method

.method public setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 697
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .line 715
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->a(IZ)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 294
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c:Landroid/net/Uri;

    .line 295
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoUri(Landroid/net/Uri;)V

    .line 297
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->e(Z)V

    :cond_0
    return-void
.end method
