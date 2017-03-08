package com.consol.citrus.demo.voting.model;

/**
 * @author Christoph Deppisch
 */
public class Vote {

    private String votingId;
    private String option;

    /**
     * Default constructor.
     */
    public Vote() {
        super();
    }

    /**
     * Constructor using fields.
     * @param votingId
     * @param option
     */
    public Vote(String votingId, String option) {
        this.votingId = votingId;
        this.option = option;
    }

    /**
     * Gets the votingId.
     *
     * @return
     */
    public String getVotingId() {
        return votingId;
    }

    /**
     * Sets the votingId.
     *
     * @param votingId
     */
    public void setVotingId(String votingId) {
        this.votingId = votingId;
    }

    /**
     * Gets the option.
     *
     * @return
     */
    public String getOption() {
        return option;
    }

    /**
     * Sets the option.
     *
     * @param option
     */
    public void setOption(String option) {
        this.option = option;
    }
}
