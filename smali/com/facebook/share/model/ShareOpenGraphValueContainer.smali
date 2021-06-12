.class public abstract Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer;",
        "E:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModel;"
    }
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<",
            "TP;TE;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->access$000(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    return-object p1
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphObject;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getObjectArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 164
    instance-of v2, v1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v2, :cond_1

    .line 165
    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPhoto(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 179
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPhotoArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 193
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 195
    instance-of v2, v1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v2, :cond_1

    .line 196
    check-cast v1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 243
    iget-object p2, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
