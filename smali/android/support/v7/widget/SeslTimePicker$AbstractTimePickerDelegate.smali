.class abstract Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/support/v7/widget/SeslTimePicker;

.field protected mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;

.field protected mOnTimeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/SeslTimePicker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    .line 445
    iput-object p2, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 448
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 456
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method
