.class Lcom/qti/internal/telephony/QtiRilInterface$1;
.super Ljava/lang/Object;
.source "QtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/QtiRilInterface;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/QtiRilInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/internal/telephony/QtiRilInterface;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQcRilHookDisconnected()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 66
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRilInterface;->-set0(Z)Z

    .line 67
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v2, "Service disconnected, notifying registrants"

    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRilInterface;->-wrap2(Lcom/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qti/internal/telephony/QtiRilInterface;->-get1()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 70
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRilInterface;->-get2(Lcom/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 65
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onQcRilHookReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRilInterface;->-set0(Z)Z

    .line 59
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v2, "Service ready, notifying registrants"

    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRilInterface;->-wrap2(Lcom/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qti/internal/telephony/QtiRilInterface;->-get1()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 62
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRilInterface;->-get2(Lcom/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 57
    return-void
.end method
