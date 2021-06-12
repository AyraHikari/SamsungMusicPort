.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2828
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2832
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    return-void
.end method
