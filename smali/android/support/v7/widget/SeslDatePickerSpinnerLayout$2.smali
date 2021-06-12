.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 177
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 8

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$402(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 193
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    .line 197
    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v6

    .line 196
    invoke-static {p1, v0, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I

    move-result p1

    :cond_1
    if-ne p2, p1, :cond_2

    if-eq p3, v4, :cond_3

    :cond_2
    if-ne p2, v4, :cond_4

    if-ne p3, p1, :cond_4

    .line 202
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 204
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 205
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    goto :goto_0

    .line 209
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 211
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 212
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    goto/16 :goto_3

    .line 216
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xb

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    if-nez p2, :cond_9

    if-ne p3, p1, :cond_9

    .line 218
    :cond_8
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 220
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 221
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    goto :goto_2

    .line 225
    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    .line 227
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 228
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_a
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    .line 233
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 235
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->add(II)V

    .line 238
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 239
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$402(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_c
    const/4 p1, 0x1

    const/4 p2, 0x1

    .line 249
    :goto_3
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 250
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    .line 251
    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v6

    .line 250
    invoke-static {p3, v0, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I

    move-result p3

    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v0

    if-le v0, p3, :cond_d

    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    .line 255
    :cond_d
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 256
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    .line 257
    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 256
    invoke-static {p3, v0, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 258
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_e

    .line 259
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1102(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)Z

    .line 266
    :cond_e
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 268
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 270
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 271
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result p3

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v0

    .line 273
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v1

    .line 276
    :cond_f
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2, p3, v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V

    if-nez p2, :cond_10

    if-eqz p1, :cond_11

    .line 278
    :cond_10
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p3, v3, v3, p2, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;ZZZZ)V

    .line 280
    :cond_11
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    return-void

    .line 245
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
