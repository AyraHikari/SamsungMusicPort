.class public Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;
.super Landroid/support/v7/preference/PreferenceDialogFragmentCompat;
.source "SourceFile"


# static fields
.field private static final SAVE_STATE_CHANGED:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.changed"

.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.values"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method private getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;
    .locals 3

    .line 46
    new-instance v0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 59
    invoke-direct {p0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 68
    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    iput-boolean v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 74
    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 2

    .line 120
    invoke-direct {p0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 121
    iget-boolean p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 123
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 5

    .line 96
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 99
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 101
    iget-object v3, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;-><init>(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.values"

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 85
    iget-boolean v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 86
    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 87
    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
