.class public final Lcom/google/android/gms/internal/zzabm;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzabm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/os/Bundle;

.field private c:Lcom/google/android/gms/internal/zzakd;

.field private d:Landroid/content/pm/ApplicationInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/PackageInfo;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzabn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzabn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabm;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzakd;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/zzakd;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabm;->b:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabm;->c:Lcom/google/android/gms/internal/zzakd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabm;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabm;->d:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzabm;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzabm;->g:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzabm;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzabm;->i:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/zzabm;->j:Ljava/lang/String;

    return-void
.end method
