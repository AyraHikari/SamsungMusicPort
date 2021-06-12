.class Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnpaddedMonthField"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 796
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    .line 828
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 830
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x2

    .line 819
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->a(Ljava/lang/StringBuffer;I)V

    return-void
.end method
