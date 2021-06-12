.class Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;->a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;->a:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->a(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;->b()V

    return-void
.end method
