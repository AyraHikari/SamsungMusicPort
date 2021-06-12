.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSettingsPagerAdapter"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 140
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 133
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    const/4 p2, 0x2

    .line 137
    iput p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->c:I

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify audio path changed to fragments : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 189
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->c:I

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method b()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 204
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->e()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->e()[I

    move-result-object v2

    .line 219
    :cond_1
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a([I[I)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->c:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 150
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->isSoundAliveFX()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;-><init>()V

    :goto_0
    return-object p1

    .line 148
    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 177
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b04e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->b:Landroid/content/Context;

    const v0, 0x7f0b04de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 160
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a:Landroid/util/SparseArray;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
