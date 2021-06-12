.class public final Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

.field public static final b:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion;


# instance fields
.field private final c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

.field private final d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

.field private final e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->b:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion;

    .line 187
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    .line 188
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 189
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 190
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    .line 187
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "ClassLoader.getSystemClassLoader()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "parcel.readParcelable(loader)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 173
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "parcel.readParcelable(loader)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 174
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    const-string p2, "parcel.readParcelable(loader)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    .line 171
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V
    .locals 1

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mdrmAudio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlist"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 162
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 163
    sget-object p2, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 164
    sget-object p3, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    iget-object p1, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalSyncUpInfo(audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mdrmAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->c:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->d:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->e:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
