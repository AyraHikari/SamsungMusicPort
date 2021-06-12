.class public abstract Lcom/google/android/gms/internal/zzmx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzmx;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmx;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->e()Lcom/google/android/gms/internal/zznd;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zznd;->a(Lcom/google/android/gms/internal/zzmx;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzmy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmx;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzmx;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmx;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->e()Lcom/google/android/gms/internal/zznd;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zznd;->b(Lcom/google/android/gms/internal/zzmx;)V

    return-object p0
.end method

.method public static a(ILjava/lang/String;F)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "F)",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/zznb;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/zznb;-><init>(ILjava/lang/String;Ljava/lang/Float;)V

    return-object p2
.end method

.method public static a(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmz;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzmz;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzna;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzna;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzmy;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zznc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zznc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzmx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzmx;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmx;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->e()Lcom/google/android/gms/internal/zznd;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zznd;->c(Lcom/google/android/gms/internal/zzmx;)V

    return-object p0
.end method


# virtual methods
.method protected abstract a(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmx;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzmx;->a:I

    return v0
.end method
