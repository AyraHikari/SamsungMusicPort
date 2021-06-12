.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$2;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
