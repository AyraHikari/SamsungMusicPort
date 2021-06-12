.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;,
        Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/os/Handler;

.field private i:Landroid/support/v7/app/AlertDialog;

.field private final j:Lkotlin/Lazy;

.field private final k:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lowBatteryPopup"

    const-string v4, "getLowBatteryPopup()Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->b:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->k:Landroid/app/Activity;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->k:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->c:Landroid/content/Context;

    .line 34
    new-instance p1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->j:Lkotlin/Lazy;

    const p1, 0x7f130550

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 62
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->b_:Z

    if-eqz p2, :cond_0

    const p2, 0x7f130551

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->e:Landroid/widget/TextView;

    const p2, 0x7f130552

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->f:Landroid/widget/TextView;

    const p2, 0x7f130372

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->g:Landroid/widget/ProgressBar;

    .line 66
    new-instance p1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;Landroid/os/Looper;)V

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string p2, "contentView"

    .line 73
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->i:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->i:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)Landroid/app/Activity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->k:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->j()V

    return-void
.end method

.method private final h()Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;

    return-object v0
.end method

.method private final i()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e()I

    move-result v0

    int-to-long v0, v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->c:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final j()V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->f()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e()I

    move-result v0

    const-string v2, "SetAsPlayer"

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgress position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, v1

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 131
    iget-object v4, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->c:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    .line 134
    div-int/2addr v1, v0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    const-string v1, "SetAsPlayer"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgress() duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->k:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;)V

    .line 82
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;)V

    .line 83
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(JZZ)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h()Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;)V

    .line 80
    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    return-void
.end method

.method public final a(JZZ)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(JZZ)V

    :cond_0
    const-string v0, "SetAsPlayer"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayer() audioId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fromHighlight="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " playReadyOnly="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public final b(J)I
    .locals 3

    const-string v0, "SetAsPlayer"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHighlightOffset audioId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(J)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b()V

    :cond_0
    const-string v0, "SetAsPlayer"

    const-string v1, "stopPlayer"

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->j()V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->i()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d()V

    :cond_2
    return-void
.end method
