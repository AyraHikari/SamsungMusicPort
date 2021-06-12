.class Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslSimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v7/widget/SeslSimpleMonthView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslSimpleMonthView;Landroid/view/View;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1031
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1027
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1028
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1192
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v0

    .line 1193
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1194
    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1600(Landroid/support/v7/widget/SeslSimpleMonthView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1195
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1700(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    .line 1196
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1900(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 p1, p1, -0x1

    .line 1197
    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v4

    add-int/2addr p1, v4

    .line 1198
    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1900(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v4

    div-int v4, p1, v4

    .line 1199
    iget-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1900(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v5

    rem-int/2addr p1, v5

    mul-int p1, p1, v3

    add-int/2addr v0, p1

    mul-int v4, v4, v2

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    .line 1203
    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getItemDescription(I)Ljava/lang/CharSequence;
    .locals 10

    .line 1215
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1216
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1600(Landroid/support/v7/widget/SeslSimpleMonthView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 1217
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x16

    .line 1216
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1220
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$700(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2000(Landroid/support/v7/widget/SeslSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1221
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v1

    .line 1222
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    .line 1223
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz p1, :cond_1

    .line 1226
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    xor-int/2addr v3, v5

    sub-int/2addr v2, v3

    .line 1227
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xb

    .line 1232
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4, v2, v1, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1100(Landroid/support/v7/widget/SeslSimpleMonthView;IIZ)I

    move-result v4

    add-int/2addr p1, v4

    goto :goto_0

    .line 1234
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v7

    if-le p1, v7, :cond_3

    .line 1235
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2200(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    xor-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 1236
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2200(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    if-le v2, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 1241
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v4

    sub-int/2addr p1, v4

    .line 1243
    :cond_3
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2300(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2400(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v9, v1

    const/4 p1, 0x3

    .line 1244
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, p1

    .line 1243
    invoke-static {v4, v7, v8, v9}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2300(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2600(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1, v2, v3, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1246
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2300(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2700(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1247
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2300(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2800(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1248
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 1250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1251
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, v2, v3}, Ljava/util/Calendar;->set(III)V

    :try_start_0
    const-string p1, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    .line 1256
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1257
    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2000(Landroid/support/v7/widget/SeslSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v2

    .line 1256
    invoke-static {p1, v5, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    const-string p1, "SemSimpleMonthView"

    const-string v1, "getItemDescription, Calendar LunarDateUtils class is null"

    .line 1263
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1267
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    const-string v3, "buildLunarDateString"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Ljava/util/Calendar;

    aput-object v8, v7, v6

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    invoke-static {v2, p1, v3, v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2900(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1269
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v6

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v2, v3, p1, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1270
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1271
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    :catch_0
    const-string p1, "SemSimpleMonthView"

    const-string v1, "getItemDescription, Calendar LunarDateUtils class not found"

    .line 1259
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    .line 1040
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1042
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1

    .line 1051
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$000(Landroid/support/v7/widget/SeslSimpleMonthView;FF)I

    move-result p1

    .line 1058
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$200(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p2

    if-lt p1, p2, :cond_1

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1059
    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$300(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$400(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p2

    if-le p1, p2, :cond_2

    :cond_1
    const/high16 p1, -0x80000000

    return p1

    .line 1064
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2a

    if-gt v1, v2, :cond_3

    sub-int v2, v1, v0

    .line 1077
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$200(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1078
    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$300(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$400(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 1081
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 6

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return p3

    .line 1123
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 1126
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$200(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p2

    if-lt p1, p2, :cond_2

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1127
    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$300(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$400(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p2

    if-le p1, p2, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 p2, 0xb

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-gtz p1, :cond_6

    .line 1132
    iget-object p3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$700(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1133
    iget-object p3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p3

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v1

    xor-int/2addr v1, v0

    sub-int/2addr p3, v1

    if-gez p3, :cond_4

    .line 1136
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1137
    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    .line 1136
    invoke-static {v1, p2, v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1100(Landroid/support/v7/widget/SeslSimpleMonthView;IIZ)I

    move-result p2

    .line 1138
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr p2, p1

    invoke-static {v1, v2, p3, p2, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V

    goto/16 :goto_0

    .line 1141
    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v2

    invoke-static {p2, p3, v1, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1100(Landroid/support/v7/widget/SeslSimpleMonthView;IIZ)I

    move-result p2

    .line 1142
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    add-int/2addr p2, p1

    invoke-static {v1, v2, p3, p2, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V

    goto/16 :goto_0

    .line 1146
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 1147
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1148
    iget-object p3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p3

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    invoke-virtual {p2, p3, v3, v0}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v0

    .line 1149
    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 1150
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 1151
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1152
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1150
    invoke-static {p1, p3, v1, p2, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V

    goto/16 :goto_0

    .line 1154
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    if-le p1, v3, :cond_9

    .line 1155
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$700(Landroid/support/v7/widget/SeslSimpleMonthView;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1156
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, p2, :cond_7

    .line 1158
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    .line 1159
    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    sub-int/2addr p1, v2

    .line 1158
    invoke-static {p2, v1, p3, p1, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V

    goto :goto_0

    .line 1161
    :cond_7
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p2, v2, v1, p1, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V

    goto :goto_0

    .line 1165
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 1166
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1167
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v5

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1168
    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 1169
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1170
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1171
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1169
    invoke-static {p1, v3, v1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V

    goto :goto_0

    .line 1175
    :cond_9
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object p3, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result p3

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v1

    invoke-static {p2, p3, v1, p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$1400(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    :goto_0
    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1089
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1091
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1097
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1100
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 1102
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 1104
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$600(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->access$600(Landroid/support/v7/widget/SeslSimpleMonthView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 1107
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p1, 0x1

    .line 1108
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1109
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 1110
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3

    .line 1035
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
