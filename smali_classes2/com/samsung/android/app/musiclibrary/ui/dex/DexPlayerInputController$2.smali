.class Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x9

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 57
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericMotion AXIS_VSCROLL < 0.0f -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->f()Z

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 61
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericMotion AXIS_VSCROLL >= 0.0f -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->g()Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return p1
.end method
