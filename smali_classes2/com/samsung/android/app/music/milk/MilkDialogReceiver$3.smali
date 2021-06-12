.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 198
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    const-string v0, "Not auto time dialog dismissed"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;J)J

    return-void
.end method
