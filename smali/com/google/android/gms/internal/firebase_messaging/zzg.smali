.class final Lcom/google/android/gms/internal/firebase_messaging/zzg;
.super Lcom/google/android/gms/internal/firebase_messaging/zzd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_messaging/zze;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzd;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zze;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzg;->a:Lcom/google/android/gms/internal/firebase_messaging/zze;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzg;->a:Lcom/google/android/gms/internal/firebase_messaging/zze;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_messaging/zze;->a(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The suppressed exception cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
