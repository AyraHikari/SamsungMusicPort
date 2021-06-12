.class public final Lcom/google/android/gms/measurement/internal/zzfh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/Long;

.field private final f:Ljava/lang/Float;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzfi;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->d:I

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    .line 33
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzfh;->b:J

    .line 34
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->f:Ljava/lang/Float;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    if-eqz p6, :cond_0

    .line 37
    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    goto :goto_0

    .line 38
    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    .line 39
    :goto_0
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzfh;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfj;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzfj;->d:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfj;->e:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzfj;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->d:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    .line 7
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->b:J

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfh;->c:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->f:Ljava/lang/Float;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 15
    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->f:Ljava/lang/Float;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    return-void

    .line 19
    :cond_1
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->f:Ljava/lang/Float;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    .line 23
    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    return-void

    .line 24
    :cond_2
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_3

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->f:Ljava/lang/Float;

    .line 27
    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    return-void

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 51
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->d:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->b:J

    const/4 v0, 0x3

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;IJ)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->e:Ljava/lang/Long;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    .line 55
    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->g:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->c:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->h:Ljava/lang/Double;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    .line 59
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)V

    return-void
.end method
