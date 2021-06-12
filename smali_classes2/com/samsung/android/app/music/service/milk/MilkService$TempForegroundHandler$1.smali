.class Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->b:Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 479
    iput p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 483
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopForegroundInternal. try to stop. cnt - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->b:Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->a(Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;)Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 485
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;->b:Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b(Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
