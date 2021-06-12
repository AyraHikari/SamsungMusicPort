.class public Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;
.super Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mDefaultItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 38
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 50
    new-instance v0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;-><init>(Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 42
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-object v0
.end method
