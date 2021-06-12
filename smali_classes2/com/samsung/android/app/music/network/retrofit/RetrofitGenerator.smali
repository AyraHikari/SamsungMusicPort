.class public Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p0

    const-string v0, "loglevel"

    const/4 v1, 0x2

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 50
    sget-object p0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    return-object p0

    .line 48
    :pswitch_0
    sget-object p0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
