.class final Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DexGestureDetector"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DexGestureDetector onDoubleTap ToolType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ButtonState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    const/4 p1, 0x1

    return p1
.end method
