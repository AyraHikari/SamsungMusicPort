.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 61
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 63
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Landroid/support/v7/preference/PreferenceGroup$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/PreferenceGroup$1;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 79
    sget-object v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    sget p3, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 83
    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    return-object p0
.end method

.method private removePreferenceInt(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onPrepareForRemoval()V

    .line 221
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->assignParent(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 248
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addItemFromInflater(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    .line 155
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 161
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_1

    .line 162
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 165
    :cond_1
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 168
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 172
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 177
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_4
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 188
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 190
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getNextId()J

    move-result-wide v3

    .line 194
    :goto_0
    invoke-virtual {p1, v0, v3, v4}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;J)V

    .line 195
    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->assignParent(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 197
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v0, :cond_6

    .line 198
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 201
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return v1

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 394
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 383
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 386
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 388
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 4

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 295
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 302
    :cond_1
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 303
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .line 304
    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreference(I)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1
.end method

.method public getPreferenceCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 331
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3

    .line 365
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 369
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 371
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .line 336
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onAttached()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .line 351
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 357
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 359
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onDetached()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 272
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeAll()V
    .locals 3

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreferenceInt(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 261
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removePreference(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreferenceInt(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return p1
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return-void
.end method

.method sortPreferences()V
    .locals 1

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
