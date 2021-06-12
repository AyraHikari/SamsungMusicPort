.class public final Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

.field public static final b:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->b:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion;

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 106
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    iput p2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    iput p3, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 83
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

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

    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

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
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

    iget p1, p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalSyncUpResult(inserted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

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

    .line 94
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
