.class public Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;)Landroid/net/Uri;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;
    .locals 2

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " != \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
