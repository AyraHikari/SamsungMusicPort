.class public Landroid/support/v7/preference/PreferenceCategory;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# instance fields
.field private mHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceCategoryStyle:I

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    :try_start_0
    sget p2, Landroid/support/v7/preference/R$string;->sesl_preferencecategory_added_title:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceCategory;->mHeader:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PreferenceCategory"

    const-string v0, "Can not find the string. Please updates latest sesl-appcompat library, "

    .line 60
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "Header"

    .line 41
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceCategory;->mHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 112
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceCategory;->mHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceCategory;->mIsSolidRoundedCorner:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 121
    iget v0, p0, Landroid/support/v7/preference/PreferenceCategory;->mSubheaderColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 93
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionItemInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowIndex()I

    move-result v1

    .line 100
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowSpan()I

    move-result v2

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnIndex()I

    move-result v3

    .line 102
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnSpan()I

    move-result v4

    const/4 v5, 0x1

    .line 104
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isSelected()Z

    move-result v6

    .line 98
    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 71
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
