.class Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    .line 2236
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5000(Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2236
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2240
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2245
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$5100(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2248
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$5100(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2250
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
