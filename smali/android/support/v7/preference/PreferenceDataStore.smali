.class public abstract Landroid/support/v7/preference/PreferenceDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0

    .line 107
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 0

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 0

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
