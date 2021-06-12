.class Lcom/dawin/http/parser/TrackingInfoParser$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/http/parser/TrackingInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/http/parser/TrackingInfoParser;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dawin/http/parser/TrackingInfoParser;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/http/parser/TrackingInfoParser$a;->a:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/TrackingInfoParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/http/parser/TrackingInfoParser$a;-><init>(Lcom/dawin/http/parser/TrackingInfoParser;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/http/parser/TrackingInfoParser$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/http/parser/TrackingInfoParser$a;->c:Ljava/lang/String;

    return-void
.end method
