.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

.field final synthetic val$forwardDistance:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;I)V
    .locals 0

    .line 1946
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iput p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->val$forwardDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1949
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;-><init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
