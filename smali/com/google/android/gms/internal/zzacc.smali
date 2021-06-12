.class final synthetic Lcom/google/android/gms/internal/zzacc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# static fields
.field static final a:Lcom/google/android/gms/internal/zzakg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzacc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzacc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->a:Lcom/google/android/gms/internal/zzakg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzacb;->zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method
