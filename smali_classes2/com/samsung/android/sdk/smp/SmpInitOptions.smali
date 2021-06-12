.class public Lcom/samsung/android/sdk/smp/SmpInitOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpInitOptions;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
