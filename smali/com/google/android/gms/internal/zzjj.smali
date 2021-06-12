.class public final Lcom/google/android/gms/internal/zzjj;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzjj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:J

.field public final d:Landroid/os/Bundle;

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:I

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Lcom/google/android/gms/internal/zzmn;

.field public final l:Landroid/location/Location;

.field public final m:Ljava/lang/String;

.field public final n:Landroid/os/Bundle;

.field public final o:Landroid/os/Bundle;

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjj;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzmn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzmn;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/zzjj;->b:I

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzjj;->c:J

    if-nez p4, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    move v1, p5

    iput v1, v0, Lcom/google/android/gms/internal/zzjj;->e:I

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->f:Ljava/util/List;

    move v1, p7

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjj;->g:Z

    move v1, p8

    iput v1, v0, Lcom/google/android/gms/internal/zzjj;->h:I

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjj;->i:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->j:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->k:Lcom/google/android/gms/internal/zzmn;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->l:Landroid/location/Location;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->m:Ljava/lang/String;

    if-nez p14, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p14

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->n:Landroid/os/Bundle;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->o:Landroid/os/Bundle;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->p:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->q:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjj;->r:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjj;->s:Z

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->n:Landroid/os/Bundle;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object p0, p0, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzjj;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzjj;->c:J

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget v1, p0, Lcom/google/android/gms/internal/zzjj;->e:I

    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj;->f:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzjj;->g:Z

    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/zzjj;->h:I

    const/4 v3, 0x7

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzjj;->i:Z

    const/16 v3, 0x8

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj;->j:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj;->k:Lcom/google/android/gms/internal/zzmn;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj;->l:Landroid/location/Location;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjj;->m:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjj;->n:Landroid/os/Bundle;

    const/16 v1, 0xd

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjj;->o:Landroid/os/Bundle;

    const/16 v1, 0xe

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjj;->p:Ljava/util/List;

    const/16 v1, 0xf

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjj;->q:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzjj;->r:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/zzjj;->s:Z

    const/16 v1, 0x12

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
