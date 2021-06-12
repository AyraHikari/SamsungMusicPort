.class Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIWorkerMsg"
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

.field final synthetic f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->a:Ljava/lang/Runnable;

    .line 132
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->b:Z

    .line 133
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->c:Z

    .line 134
    iput p5, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->d:I

    .line 135
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->e:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    return-void
.end method
