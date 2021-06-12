.class public Landroid/support/v7/widget/SeslDropDownItemTextView;
.super Landroid/support/v7/widget/SeslCheckedTextView;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDropDownItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 21
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDropDownItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/SeslDropDownItemTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
