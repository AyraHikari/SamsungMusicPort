.class public final Lcom/google/android/gms/common/images/WebImage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Landroid/net/Uri;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0}, Lcom/google/android/gms/common/images/zae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/images/WebImage;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    .line 4
    iput p3, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/common/images/WebImage;->d:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 36
    instance-of v2, p1, Lcom/google/android/gms/common/images/WebImage;

    if-nez v2, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->d:I

    iget p1, p1, Lcom/google/android/gms/common/images/WebImage;->d:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Image %dx%d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 43
    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/WebImage;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 46
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/WebImage;->b()I

    move-result p2

    const/4 v1, 0x3

    .line 49
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/WebImage;->c()I

    move-result p2

    const/4 v1, 0x4

    .line 52
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 53
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)V

    return-void
.end method
