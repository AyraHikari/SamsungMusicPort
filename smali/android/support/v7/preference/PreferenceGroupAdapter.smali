.class public Landroid/support/v7/preference/PreferenceGroupAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;
.implements Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/preference/PreferenceViewHolder;",
        ">;",
        "Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;",
        "Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;"
    }
.end annotation


# instance fields
.field private mCategoryLayoutId:I

.field private mHandler:Landroid/os/Handler;

.field mIsCategoryAfter:Z

.field mNextGroupPreference:Landroid/support/v7/preference/Preference;

.field mNextPreference:Landroid/support/v7/preference/Preference;

.field private mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field mPrevPreference:Landroid/support/v7/preference/Preference;

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    sget v0, Landroid/support/v7/preference/R$layout;->sesl_preference_category:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mCategoryLayoutId:I

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/support/v7/preference/Preference;

    .line 80
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/support/v7/preference/Preference;

    .line 81
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPrevPreference:Landroid/support/v7/preference/Preference;

    .line 84
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceGroupAdapter$1;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 132
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 138
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    instance-of p1, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 144
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Landroid/support/v7/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object p1

    .line 279
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance p2, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p2}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    .line 271
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$102(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 273
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getWidgetLayoutResource()I

    move-result p1

    invoke-static {p2, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    return-object p2
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->sortPreferences()V

    .line 212
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 214
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 218
    iput-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/support/v7/preference/Preference;

    .line 219
    iget-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/support/v7/preference/Preference;

    if-ne v2, v3, :cond_1

    .line 220
    iput-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/support/v7/preference/Preference;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 223
    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/support/v7/preference/Preference;

    .line 224
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/support/v7/preference/Preference;

    if-ne v2, v3, :cond_1

    .line 225
    iput-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/support/v7/preference/Preference;

    .line 229
    :cond_1
    :goto_1
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    .line 230
    iget-boolean v4, v2, Landroid/support/v7/preference/Preference;->mIsRoundChanged:Z

    if-nez v4, :cond_2

    const/16 v4, 0xf

    .line 231
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    .line 233
    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/preference/PreferenceGroup;->mIsSolidRoundedCorner:Z

    iput-boolean v4, v2, Landroid/support/v7/preference/Preference;->mIsSolidRoundedCorner:Z

    .line 234
    iget v4, p2, Landroid/support/v7/preference/PreferenceGroup;->mSubheaderColor:I

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->seslSetSubheaderColor(I)V

    .line 239
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4

    .line 242
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mCategoryLayoutId:I

    .line 243
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 244
    sget v3, Landroid/support/v7/preference/R$layout;->sesl_preference_category_empty:I

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 248
    :cond_4
    invoke-direct {p0, v2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/support/v7/preference/Preference;)V

    .line 250
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_5

    .line 251
    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 252
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    iget-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/support/v7/preference/Preference;

    iput-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/support/v7/preference/Preference;

    .line 256
    invoke-direct {p0, p1, v3}, Landroid/support/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 260
    :cond_5
    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private syncMyPreferences()V
    .locals 5

    .line 148
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 159
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_2
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 165
    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 166
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 168
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 172
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v3

    .line 173
    new-instance v4, Landroid/support/v7/preference/PreferenceGroupAdapter$2;

    invoke-direct {v4, p0, v2, v1, v3}, Landroid/support/v7/preference/PreferenceGroupAdapter$2;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V

    invoke-static {v4}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 204
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 205
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->clearWasDetached()V

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/support/v7/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 357
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 359
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 361
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 365
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 366
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    new-instance v1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v1, v2}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I
    .locals 3

    .line 426
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 428
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .locals 3

    .line 414
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 416
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 417
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 0

    .line 408
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    .line 409
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/PreferenceViewHolder;
    .locals 3

    .line 373
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 374
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 387
    invoke-static {p2}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$200(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020018

    .line 394
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 396
    invoke-static {p2}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-static {p2}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result p2

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 399
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 403
    :cond_1
    :goto_0
    new-instance p2, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {p2, p1}, Landroid/support/v7/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/PreferenceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 304
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 308
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 314
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 320
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    .line 328
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 329
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 332
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemInserted(I)V

    goto :goto_4

    .line 344
    :cond_4
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 346
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 350
    :cond_6
    :goto_3
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 351
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemRemoved(I)V

    :goto_4
    return-void
.end method
