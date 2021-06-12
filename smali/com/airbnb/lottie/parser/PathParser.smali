.class public Lcom/airbnb/lottie/parser/PathParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/airbnb/lottie/parser/PathParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/PathParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->a:Lcom/airbnb/lottie/parser/PathParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/PathParser;->a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
