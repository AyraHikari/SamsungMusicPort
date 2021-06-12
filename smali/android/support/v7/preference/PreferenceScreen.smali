.class public final Landroid/support/v7/preference/PreferenceScreen;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "SourceFile"


# instance fields
.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 92
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getOnNavigateToScreenListener()Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0, p0}, Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setShouldUseGeneratedIds(Z)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldUseGeneratedIds()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return v0
.end method
