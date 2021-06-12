.class final Lcom/google/android/gms/measurement/internal/zzfj;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfj;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfj;->c:Ljava/lang/String;

    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzfj;->d:J

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzfj;->e:Ljava/lang/Object;

    return-void
.end method
