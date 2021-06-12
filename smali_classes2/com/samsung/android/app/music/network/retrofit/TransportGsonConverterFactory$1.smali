.class final Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->a()Lcom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/FieldAttributes;)Z
    .locals 1

    .line 36
    const-class v0, Lcom/google/gson/annotations/Expose;

    invoke-virtual {p1, v0}, Lcom/google/gson/FieldAttributes;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/google/gson/annotations/Expose;

    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1}, Lcom/google/gson/annotations/Expose;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
