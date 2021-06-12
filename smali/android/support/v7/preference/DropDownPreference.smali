.class public Landroid/support/v7/preference/DropDownPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget v0, Landroid/support/v7/preference/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 138
    new-instance p2, Landroid/support/v7/preference/DropDownPreference$1;

    invoke-direct {p2, p0}, Landroid/support/v7/preference/DropDownPreference$1;-><init>(Landroid/support/v7/preference/DropDownPreference;)V

    iput-object p2, p0, Landroid/support/v7/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 57
    iput-object p1, p0, Landroid/support/v7/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 60
    invoke-direct {p0}, Landroid/support/v7/preference/DropDownPreference;->updateEntries()V

    return-void
.end method

.method private updateEntries()V
    .locals 5

    .line 89
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 90
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 92
    iget-object v4, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mContext:Landroid/content/Context;

    sget v2, Landroid/support/v7/preference/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 109
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 110
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected notifyChanged()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/support/v7/preference/ListPreference;->notifyChanged()V

    .line 121
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 126
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Landroid/support/v7/preference/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    .line 128
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setSoundEffectsEnabled(Z)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 134
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 135
    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->performClick()Z

    return-void
.end method

.method public seslGetSpinner()Landroid/support/v7/widget/AppCompatSpinner;
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    return-object v0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 71
    invoke-direct {p0}, Landroid/support/v7/preference/DropDownPreference;->updateEntries()V

    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
