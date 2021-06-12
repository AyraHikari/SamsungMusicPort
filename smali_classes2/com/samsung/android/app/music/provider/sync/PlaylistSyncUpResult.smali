.class public final Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

.field public static final b:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->b:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion;

    .line 150
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    .line 153
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    iput p2, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    iput p3, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    iput p4, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    iput p5, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p7, 0x0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p6, 0x0

    goto :goto_4

    :cond_4
    move p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v2

    move p5, v3

    .line 119
    invoke-direct/range {p1 .. p6}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 122
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

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

.method public final b()Z
    .locals 1

    .line 128
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

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

.method public final c()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    iget p1, p1, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    if-ne v1, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final f()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistSyncUpResult(inserted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memberInserted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memberDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
