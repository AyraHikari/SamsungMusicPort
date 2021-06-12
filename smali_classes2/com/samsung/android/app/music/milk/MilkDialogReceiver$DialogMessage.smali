.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogMessage"
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field b:Ljava/lang/String;

.field c:Landroid/os/Bundle;

.field final synthetic d:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->d:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 327
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->b:Ljava/lang/String;

    .line 328
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->b:Ljava/lang/String;

    return-object v0
.end method
