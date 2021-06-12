.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2811
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2811
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2815
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2820
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2821
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
