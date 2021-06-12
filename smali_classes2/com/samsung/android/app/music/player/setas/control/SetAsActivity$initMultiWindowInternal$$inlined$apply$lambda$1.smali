.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 0

    .line 295
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d()V

    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d()V

    :cond_0
    return-void
.end method
