.class Lretrofit2/DefaultCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/DefaultCallAdapterFactory;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lretrofit2/DefaultCallAdapterFactory;


# direct methods
.method constructor <init>(Lretrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory$1;->b:Lretrofit2/DefaultCallAdapterFactory;

    iput-object p2, p0, Lretrofit2/DefaultCallAdapterFactory$1;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lretrofit2/DefaultCallAdapterFactory$1;->b(Lretrofit2/Call;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 38
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lretrofit2/Call;)Lretrofit2/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
