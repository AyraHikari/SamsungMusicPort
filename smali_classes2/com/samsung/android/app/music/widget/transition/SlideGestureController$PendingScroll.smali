.class Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/transition/SlideGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingScroll"
.end annotation


# instance fields
.field final a:J

.field final b:F


# direct methods
.method private constructor <init>(JF)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-wide p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;->a:J

    .line 325
    iput p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;->b:F

    return-void
.end method

.method static a(F)Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;
    .locals 3

    .line 329
    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;-><init>(JF)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending scroll request time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", slide offset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
