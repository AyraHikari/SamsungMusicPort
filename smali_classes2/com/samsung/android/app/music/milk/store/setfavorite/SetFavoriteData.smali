.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/app/music/milk/store/base/ItemViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion;

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    iget p1, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetFavoriteData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 26
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method
