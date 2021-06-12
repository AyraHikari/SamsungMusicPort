.class Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;
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
    name = "UnpaddedNumberField"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    .line 783
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 785
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 787
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .line 774
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;->a:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;->a(Ljava/lang/StringBuffer;I)V

    return-void
.end method
